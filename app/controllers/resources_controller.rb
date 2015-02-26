class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(params.require(:resource).permit(:name, :organization, :max_count))
    if @resource.save
      redirect_to resources_path
    else
      render :new
    end
  end
end
