Rails.application.routes.draw do
  root "main_page#index"

  resources :users
  resources :masters
  resource :session, only: %i[new create destroy]
end
