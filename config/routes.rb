Rails.application.routes.draw do
  resources :users
  resources :masters
  root "main_page#index"
end
