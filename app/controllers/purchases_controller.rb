class PurchasesController < ApplicationController
  def new
    @ipod = Ipod.find(params[:ipod_id])
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @ipod = Ipod.find(params[:ipod_id])
    @purchase.ipod = @ipod
    @purchase.user = current_user
    @purchase.pending!
    if @purchase.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:delivery_address, :phone_number, :message)
  end
end
