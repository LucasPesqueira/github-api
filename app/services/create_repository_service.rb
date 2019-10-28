class CreateRepositoryService
  def initialize(params = {})
    @owner_params = formatted_owner_params(params)
    @repository_params = formatted_repository_params(params)
  end

  def call
    @owner = Owner.find_by(external_id: @owner_params['external_id'])

    @owner = Owner.create(@owner_params) unless @owner.try(:persisted?)
    @owner.repositories.create(@repository_params) unless Owner.find_by(external_id: @repository_params['external_id']).try(:persisted?)
  end

  private

  def formatted_repository_params(params)
    repository_params = params
    repository_params['external_id'] = repository_params.delete 'id'
    repository_params.delete 'owner'
    repository_params
  end

  def formatted_owner_params(params)
    owner_params = params['owner']
    owner_params['external_id'] = owner_params.delete 'id'
    owner_params['external_type'] = owner_params.delete 'type'
    owner_params
  end
end
