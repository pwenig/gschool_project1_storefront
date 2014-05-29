class IdeasController < ApplicationController

  def new
    @idea = Idea.new
  end

  def index
  @idea = Idea.all
  end

  def show
    @property = Property.find(params[:id])
    @idea = Idea.find(params[:id])
  end

  def create
    @property = Property.find(params[:property_id])
    @idea = Idea.create
    @idea.property_id = @property.id
    @idea.idea =  params[:idea_box]
    @idea.save
    redirect_to "/properties/#{@property.id}"
  end


private
def idea_params
  params.require(:idea).permit(:idea)
end

end
