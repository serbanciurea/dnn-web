class ContactsController < ApplicationController

  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  # def create
  #   @contact = Contact.new(contact_params)
  #   authorize @contact
  #   ContactMailer.contact_email(@contact).deliver_now
  #   if @contact.save
  #     # Handle successful save, e.g., redirect to a thank you page
  #     redirect_to root_path, notice: 'Your message has been sent successfully.'
  #   else
  #     # Handle validation errors
  #     redirect_to root_path, alert: 'Your message could not be sent.'
  #   end
  # end

  def create
    @contact = Contact.new(contact_params)
    authorize @contact
    Rails.logger.info "Attempting to send contact email..."

    if @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      Rails.logger.info "Contact email sent successfully."
      redirect_to root_path, notice: 'Your message has been sent successfully.'
    else
      Rails.logger.error "Failed to send contact email."
      redirect_to root_path, alert: 'Your message could not be sent.'
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def authorize_contact
    authorize @contact
  end
end
