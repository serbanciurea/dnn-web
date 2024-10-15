# class UserRegistrationService
#   def self.call(user)
#     if user.persisted?
#       admins = User.where(admin: true).pluck(:email)
#       SendNewUserEmailJob.perform_later(user, admins)  # Enqueue job for background processing
#     end
#   end
# end
class SendNewUserEmailJob < ApplicationJob
  queue_as :default

  def perform(user_id, admin_emails)


    user = User.find(user_id)

    admin_emails.each do |admin_email|
      UserMailer.new_user_email(user, admin_email).deliver_now
    end
  end
end
