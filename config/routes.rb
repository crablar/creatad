Rails.application.routes.draw do
  resources :ads

  root 'ads#index'
end
