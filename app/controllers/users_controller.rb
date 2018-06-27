class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    debugger
  end
end
