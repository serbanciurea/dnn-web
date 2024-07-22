# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
  default from: 'notification@example.com'

  def new_user_email(user, admin_email)
    @user = user
    mail(to: admin_email, subject: 'New User Created')
  end
end
