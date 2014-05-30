class PropertiesController < ApplicationController

  def index
    @property = Property.first
    @idea = Idea.all
  end

  def new
    @property = Property.new
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    @property.update_attributes(property_params)
    redirect_to '/'
  end

  def create
    @property = Property.create(property_params)
    redirect_to '/'
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to '/'
  end

  private
  def property_params
    params.require(:property).permit(:address, :neighborhood_id, :city, :state, :description, :image_url)
  end


end
