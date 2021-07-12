class PasswordsController < ApplicationController
  before_action :require_user_logged_in!
  # Rails callback I defined in the application_controller.rb. only allows logged in users to access the update password action.
  def edit
  end
  
  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "Password updated"
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
