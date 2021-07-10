class MainController < ApplicationController

  def index
    if session[:user_id]
      # @user = User.find(session[:user_id]) #will throw error if can't find user in database. Instead, use:
      @user = User.find_by(id: session[:user_id])
    # flash[:notice] = "Logged in successfully"
    # flash[:alert] = "Invalid email or password"
    end
  end
  
  
end