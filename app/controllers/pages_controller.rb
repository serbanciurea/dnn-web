class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :privacy_policy, :terms_and_conditions, :about, :services, :careers]


  def about
  end

  def home
    @contact = Contact.new
  end

  def privacy_policy
    # Any logic needed for the privacy policy can go here
  end

  def terms_and_conditions
    # Any logic needed for the privacy policy can go here
  end

  def services
    # Any logic needed for the privacy policy can go here
  end

  def careers
    # Any logic needed for the privacy policy can go here
  end


end
