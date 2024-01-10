Rails.application.routes.draw do
  root "main_page#index"

  resources :users
  resources :masters
  resources :dict_bodies, except: %i[destroy]
  resource :session, only: %i[new create destroy]
end
