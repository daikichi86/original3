class PlacesController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid?
      @place.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private
    def place_params
      params.require(:place).permit(:image, :name, :info, :category_id, :country_id).merge(user_id: current_user.id)
    end

end
