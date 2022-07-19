class IpodsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ipod = Ipod.new
  end

  def create
    @ipod = Ipod.new(ipod_params)
    @ipod.save
    redirect_to ipod_path(@ipod)
  end

  def update
  end

  def edit
  end

  private

  def ipod_params
    params.require(:ipod).permit(:name, :description, :model, :color, :state, :ipod_picture_url, :price, :capacity)
  end
end
