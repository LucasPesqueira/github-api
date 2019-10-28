class SearchRepositoryService
  def search(params = {})
    @name = params['name'].present? ? params['name'] : '*'
    @order = params['order'].present? ? params['order'] : 'desc'
    @limit = params['limit'].present? ? params['limit'] : '5'
    @language = params['language']

    Repository.search(@name, where: where_params, order: {stargazers_count: @order}, load: false).results.first(@limit.to_i)
  end

  private

  def where_params
    return { language: @language } if @language.present?
  end
end
