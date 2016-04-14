class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'You have signed up!'
    else
      render :new
    end
  end

  def edit

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :address, :firstname, :lastname, :password, :password_confirmation)
  end

end
