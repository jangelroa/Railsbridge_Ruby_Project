class HomeController < AuthenticatedController

  def index
    if user_signed_in?
      @message = "Welcome to my website!"
      @email = current_user.email
    else
      @message = "NOT signed in!"
    end
  end
end
