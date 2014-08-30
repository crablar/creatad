Rails.application.routes.draw do
  resources :creatives

  root 'creatives#index'
end
