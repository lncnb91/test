Rails.application.routes.draw do
  resources :words, only: :index
  root "words#index"
end
