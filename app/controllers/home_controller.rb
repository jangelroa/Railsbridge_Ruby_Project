class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if user_signed_in?
      @message = "Welcome to my website! #{current_user.email}"
      @email = current_user.email
    else
      @message = "NOT signed in!"
    end
  end
end
