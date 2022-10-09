Rails.application.routes.draw do
  get 'search/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  # /posts/1/comments/4
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # home page will be rendered in root directory ; example: localhost:3000
  root "pages#home"
  # about page will be rendered in about directory ; example: localhost:3000/about
  get 'about', to: 'pages#about'
  # Define the route for users profile
  get '/u/:id', to: 'users#profile', as: 'user'
end
