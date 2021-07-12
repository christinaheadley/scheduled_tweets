Rails.application.routes.draw do
  root to: "main#index"
  
  get "/about-us", to: "about#index", as: :about
  #get "/about-us" (without as:) will autogenerate /about_us route (autoconverts hyphens to undescores)

  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update"

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"
  get "/password/reset/edit", to: "password_resets#edit"
  patch "/password/reset/edit", to: "password_resets#update"

  delete "/logout", to: "sessions#destroy"

  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
