class UserMailer < ApplicationMailer
  def new_password(email, name, new_password)
    @name = name
    @new_password = new_password
    mail(to: email, subject: 'Nueva contraseña')
  end
end
