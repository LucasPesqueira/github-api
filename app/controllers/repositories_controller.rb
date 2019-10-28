class RepositoriesController < ApplicationController
  def index
    render json: SearchRepositoryService.new.search(params)
  end
end
