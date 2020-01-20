class UsersController < ApplicationController

  include SessionsHelper

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
      #UserMailer.new_password(@user.email, @user.name, random_password).deliver_now
      flash[:notice] = '¡Contraseña enviada!'
      redirect_to '/login'
    end
  end

  def forgot_password

  end

  def edit_password
    @user = current_user
  end

  def update_password
    @user = current_user
    if @user.authenticate(params[:actual_password])
      if params[:new_password] == params[:password_confirm]
        @user.update_column 'password_digest', BCrypt::Password.create(params[:new_password])
        flash[:notice] = '¡Se modificaron tus datos!'
        redirect_to '/patients/'
      else
        flash[:error] = 'La confirmación no coincide con tu nueva contraseña.'
        render :action => 'edit_password'
      end
    else
      flash[:error] = 'La contraseña actual no es válida.'
      render :action => 'edit_password'
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def get_user
    @user = User.find_by(email: params[:email])
  end

  # Confirms a valid user.
  def valid_user
    unless (@user && @user.activated? &&
        @user.authenticated?(:reset, params[:id]))
      redirect_to root_url
    end
  end
end
