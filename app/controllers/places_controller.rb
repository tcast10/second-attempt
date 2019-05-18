class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def index
    @places = Place.all.order("name").paginate(page: params[:page], per_page: 1)
  end

end
