class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by(email: params[:email]) #@user won't work
    if user.present? && user.authenticate(params[:password]) #Rails feature from has_secure_password in User model
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash[:alert] = "Invalid email or password"
      render :new #(sessions new.html.erb)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Successfully logged out"
  end

  private

  # def user_params
  #   params.require(:email)
  # end
end
