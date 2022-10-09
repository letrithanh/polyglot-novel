Rails.application.routes.draw do
  root             'novels#index'
  get  'login'  => 'sessions#new'
  post 'login'  => 'sessions#create'
  get  'logout' => 'sessions#destroy'
  resources :users
  resources :novels
end
