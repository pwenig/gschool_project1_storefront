class Properties < ApplicationController

  def index
    @property = Property.all
  end

  def new

  end

  def create
    create_property = Property.new
    create_property.address     =  params[:address]
    create_property.city        =  params[:city]
    create_property.state       =  params[:state]
    create_property.description =  params[:description]
    create_property.image_url   =  params[:image_url]
    create_property.save
    redirect_to '/'
  end


end
