  class ContactMailer < ApplicationMailer
    default from: 'your_email@example.com'

    def contact_email(contact)
      @contact = contact
      mail(to: 'ciureaserban777@icloud.com', subject: 'New Contact Form Submission')
    end
  end
