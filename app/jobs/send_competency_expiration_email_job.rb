class SendCompetencyExpirationEmailJob < ApplicationJob
  queue_as :default

  def perform
    User.includes(:competencies).find_each do |user|
      user.competencies.each do |competency|
        if competency.expiration_date.to_date == 2.months.from_now.to_date
          UserMailer.competency_expiration_email(user, competency).deliver_now
        elsif competency.expiration_date.to_date == 2.weeks.from_now.to_date
          UserMailer.competency_expiration_email(user, competency).deliver_now
        end
      end
    end
  end
end
