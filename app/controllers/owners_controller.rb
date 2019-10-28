class OwnersController < ApplicationController
  def index
    jsonapi_render json: Owner.search('*'), options: { resource: OwnerResource }
  end

  def show
    # It was used find_by so it won't break when there is no owner with the id from params
    jsonapi_render json: Owner.find_by(id: params[:id]), options: { resource: OwnerResource }
  end
end
