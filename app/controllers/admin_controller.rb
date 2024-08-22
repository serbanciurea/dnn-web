class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin
    before_action :set_course, only: [:show, :edit, :update, :destroy]


  def index
    # Admin actions
  end

  private

  def authorize_admin
    authorize :admin, :index?
  end

end
