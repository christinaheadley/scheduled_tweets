Rails.application.routes.draw do
  root to: "main#index"
  
  get "/about-us", to: "about#index", as: :about
  #get "/about-us" (without as:) will autogenerate /about_us route (autoconverts hyphens to undescores)

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
