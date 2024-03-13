Rails.application.routes.draw do
  root 'home#index'
  get '/privacy' => 'home#privacy'
  get 'urls/read'
  # post '/get_page' => 'urls#get_page
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
