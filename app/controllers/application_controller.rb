class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, if: -> { request.format.html? }
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id]) #Current.user instead of @user -- need to add current model for that to work
    end
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: "Please sign in first." if Current.user.nil?
  end
end
