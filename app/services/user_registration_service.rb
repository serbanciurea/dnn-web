# app/services/user_registration_service.rb
class UserRegistrationService
  def self.call(user)
    if user.persisted?
      admins = User.where(admin: true).pluck(:email)
      SendNewUserEmailJob.perform_later(user, admins)  # Asynchronous delivery
    end
  end
end
