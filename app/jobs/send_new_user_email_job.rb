class UserRegistrationService
  def self.call(user)
    if user.persisted?
      admins = User.where(admin: true).pluck(:email)
      SendNewUserEmailJob.perform_later(user, admins)  # Enqueue job for background processing
    end
  end
end
