class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    #ipods that current_user is selling
    @selling = current_user.ipods
    #ipods that current user has bought
    @purchases = current_user.purchases
  end
end
