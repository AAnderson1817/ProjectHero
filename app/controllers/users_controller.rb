class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
  end

  def edit
  end

  def update
  end

  def delete
    User.find(params[:id]).destroy
  end

  def user_params
  params.require(:name,:email)
  end
end
