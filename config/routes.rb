Rails.application.routes.draw do
  root to: "merchants#index"
  resources :merchants, only: [:index, :show] do
    get 'find_all', on: :collection
  end
  resources :items, only: [:index, :show]
end
