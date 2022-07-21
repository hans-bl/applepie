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
    @ipod.user = current_user
    if @ipod.save
      redirect_to ipod_path(@ipod)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  private

  def ipod_params
    params.require(:ipod).permit(:name, :description, :model, :color, :state, :photo, :price, :capacity)
  end
end
