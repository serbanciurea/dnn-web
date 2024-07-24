# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
  default from: 'notification@example.com'

  def new_user_email(user, admin_email)
    @user = user
    mail(to: admin_email, subject: 'New User Created')
  end

  def competency_expiration_email(user, competency)
    @user = user
    @competency = competency
    mail(to: @user.email, subject: "#{competency.name.capitalize} Competency Expiration Notice")
  end

  def send_job_email(user, job)
    @user = user
    @job = job
    mail(to: @user.email, subject: "Job Opportunity: #{@job.title}")
  end
end
