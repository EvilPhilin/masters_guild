Rails.application.routes.draw do
  root "main_page#index"

  resources :users
  resources :masters
  resource :session, only: %i[new create destroy]

  resources :dict_necks, except: %i[destroy]
  resources :dict_bodies, except: %i[destroy]
end
