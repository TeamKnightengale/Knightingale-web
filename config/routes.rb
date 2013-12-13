TweetAnalyze::Application.routes.draw do
  resources :tweets, only:[:index,:show]
  root 'tweets#index'
  match '/auth/twitter/callback', to: 'sessions#create', via: 'get'
  match 'auth/failure', to: redirect('/'), via: ['get', 'post']
  match 'signout', to: 'sessions#destroy', as: 'signout', via: ['get', 'delete']

end
