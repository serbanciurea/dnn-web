class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin

  def index
    # Admin actions
  end

  private

  def authorize_admin
    authorize :admin, :index?
  end

end
