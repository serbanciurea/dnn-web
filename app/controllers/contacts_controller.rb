class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    authorize @contact
    ContactMailer.contact_email(@contact).deliver_now
    if @contact.save
      # Handle successful save, e.g., redirect to a thank you page
      redirect_to root_path, notice: 'Your message has been sent successfully.'
    else
      # Handle validation errors
      render :new
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
