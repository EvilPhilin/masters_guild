Rails.application.routes.draw do
  resources :users
  root "main_page#index"
  resources :masters
end
