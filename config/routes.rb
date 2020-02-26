Rails.application.routes.draw do


  post 'user_token' => 'user_token#create'
  get '/accounts' => 'accounts#index'
  get '/transactions' => 'transactions#index'

  post 'api/user_token' => 'user_token#create'

  resources :users

  get 'user/current' => 'users#current'

  get '/accounts/:id'=> 'accounts#show'

end
