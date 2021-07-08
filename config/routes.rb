Rails.application.routes.draw do
  root to: "main#index"
  
  get "/about-us", to: "about#index", as: :about
  #get "/about-us" (without as:) will autogenerate /about_us route (autoconverts hyphens to undescores)

  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
