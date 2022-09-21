Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # home page will be rendered in root directory ; example: localhost:3000
  root "pages#home"
  # about page will be rendered in about directory ; example: localhost:3000/about
  get 'about', to: 'pages#about'
  # Define the route for users profile
  get '/u/:id', to: 'users#profile', as: 'user'
end
