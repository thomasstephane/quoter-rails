class UserController < ApplicationController
  def new
    @User = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      login @user
      redirect_to root_path
    else
      render :new
    end
  end
end