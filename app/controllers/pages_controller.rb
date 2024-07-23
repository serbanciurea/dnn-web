class PagesController < ApplicationController

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



end
