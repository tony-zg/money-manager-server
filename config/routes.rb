Rails.application.routes.draw do


  post 'user_token' => 'user_token#create'
  get '/accounts' => 'accounts#index'
  get '/transactions' => 'transactions#index'
  post '/transactions' => 'transactions#create'

  post 'api/user_token' => 'user_token#create'

  resources :users

  get 'user/current' => 'users#current'

  get '/accounts/:id'=> 'accounts#show'
  delete '/accounts/:id'=> 'accounts#destroy'

  post '/accounts' => 'accounts#create'

end
