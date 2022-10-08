Rails.application.routes.draw do
  root 'pages#home'
  get 'signup' => 'users#new'
end
