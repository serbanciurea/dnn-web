class PagesController < ApplicationController

  def about
  end

  def home
  end

  def map
    @users = User.all
  end
end
