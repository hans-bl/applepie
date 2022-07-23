class IpodsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @ipod = Ipod.all
  end

  def show
    @ipod = Ipod.find(params[:id])
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

  def edit
    @ipod = Ipod.find(params[:id])
  end

  def update
    @ipod = Ipod.find(params[:id])
    if @ipod.update(ipod_params)
      redirect_to ipod_path(@ipod)
    else
      render :edit
    end
  end

  private

  def ipod_params
    params.require(:ipod).permit(:name, :description, :model, :color, :state, :photo, :price, :capacity)
  end
end
