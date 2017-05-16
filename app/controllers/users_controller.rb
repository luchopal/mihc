class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  def user_params
    params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to '/patients/list'
    else
      flash[:error] = "Error al generar usuario."
      render 'new'
    end
  end


  def list
    @users = User.all
  end

end
