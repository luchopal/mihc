class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  def user_params
    params.require(:user).permit(:name, :surname,:email, :password,:password_confirmation)
  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to '/patients/'
    else
      flash[:error] = "Error al generar usuario."
      render 'new'
    end
  end


  def list
    @users = User.all
  end

  def send_new_password
    parameters = params.permit(:email)
    email_to_search = parameters[:email]
    @user = User.find_by_email(email_to_search)
    if @user.nil?
      flash[:error] = "No existe el usuario solicitado."
      render :action => 'forgot_password'
    else
      random_password = (0...25).map { ('a'..'z').to_a[rand(26)] }.join
      @user.update_attribute(:password, random_password)
      UserMailer.new_password(@user.email, @user.name, random_password).deliver_later
      flash[:notice] = '¡Contraseña enviada!'
      redirect_to '/login'
    end
  end

  def forgot_password

  end

end
