Rails.application.routes.draw do
  root "books#index"

  resources :books, only: %i[index show] do
    resources :reviews, only: [:create]
  end
end
