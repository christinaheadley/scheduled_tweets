class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    #same as User.new({ email: "name@email.com", password: "password"})
    #pulls params from submitted form data. see console for full hash of data. can also see on web with "render plain: params[:user]"
    # @user = User.new(params[:user]) #this version is not secure - make it as a helper method instead:
    @user = User.new(user_params)
    if @user.save
      # cookies[:user_id] -- not secure method
      session[:user_id] = @user.id #this mehod set server side and can't be tampered with
      # can use this to check if user logged in in main controller index
      redirect_to root_path, notice: "Thanks for registering!"
    else
      render :new #new.html.erb form
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end