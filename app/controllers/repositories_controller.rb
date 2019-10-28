class RepositoriesController < ApplicationController
  def index
    jsonapi_render json: SearchRepositoryService.new.search(params), options: { resource: RepositoryResource }
  end

  def show
    # It was used find_by so it won't break when there is no repository with the id from params
    jsonapi_render json: Repository.find_by(id: params[:id]), options: { resource: RepositoryResource }
  end
end
