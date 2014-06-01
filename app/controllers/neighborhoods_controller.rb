class NeighborhoodsController < ApplicationController
  def index
    @neighborhood = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @properties = Property.select { |n| n.neighborhood_id  == @neighborhood.id }
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

end
