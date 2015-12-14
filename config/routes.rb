Rails.application.routes.draw do
  devise_for :authors
  resources :words, only: :index
  root "static_pages#start_page"
end
