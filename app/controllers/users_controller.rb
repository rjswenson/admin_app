  class UsersController < ApplicationController
  def new #show the new user form GET
    @user = User.new
  end

  def create #accept new data and store w/in database POST
    @user = User.new(user_params)
    if @user.save
      redirect_to :users
    else #redirect to new if save didn't work
      render 'new'
    end
  end

  def index #show all users GET
    @users = User.all
  end

  def show #show particular user GET
  end

  def destroy #deletes a user DELETE
    User.find(params[:id]).destroy
    redirect_to :users
  end

  def edit #show edit update form GET
    @user = User.find(params[:id])
  end

  def update #send data to database PATCH
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :users
    else
      render 'edit'
    end
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :email, :last_name)
  end

end

