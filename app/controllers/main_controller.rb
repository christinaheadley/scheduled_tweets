class MainController < ApplicationController

  def index

    #move this (and modify code) to application controller bc want to use it for any controller and any view
    # if session[:user_id]
    #   @user = User.find_by(id: session[:user_id])
      # @user = User.find(session[:user_id]) #will throw error if can't find user in database. Instead, use:
    # flash[:notice] = "Logged in successfully"
    # flash[:alert] = "Invalid email or password"
    # end
  end
  
  
end