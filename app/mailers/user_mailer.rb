class UserMailer < ApplicationMailer
  default from: 'notificatioon@example.com '
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user_mailer.subject
  #
  def new_user_mailer
    @greeting = "Hi"

    mail to: "to@example.org"

    @user = user
    admins = User.where(admin: true)
    admins.each do |ad|
      mail(to: ad.email, subject: "New User Created")
    end
  end
end
