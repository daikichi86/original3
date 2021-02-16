class PlacesController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :place_find, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.includes(:user).order("id DESC")
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

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def place_params
      params.require(:place).permit(:image, :name, :info, :category_id, :country_id).merge(user_id: current_user.id)
    end

    def place_find
      @place = Place.find(params[:id])
    end

end
