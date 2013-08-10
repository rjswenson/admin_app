class UsersController < ApplicationController
  def new  #show the new user form GET
    @user = User.new
  end

  def create  #accept new data and store w/in database POST
    @user = User.new
    if @user.save(user_params)
      redirect_to @user
    else                      #redirect to new if save didn't work
      render 'new'
    end
  end

  def index   #show all users GET
    @users = User.all
  end

  def show   #show particular user GET
  end

  def destroy #deletes a user DELETE
  end

  def edit #show edit update form GET
  end

  def update #send data to database PATCH
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
