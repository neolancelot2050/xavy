class VenuesController < ApplicationController
  def index
    @venues = Venue.all
#OAVS agregado
    @activities = Activity.all 
    @clasification = Clasification.all
    @categories = Category.all
  end

  def show
    @venue = Venue.find params[:id]
  end
  #OAVS Custom Setters
  def  categories=(value)
  	@categories = value
  end
end
