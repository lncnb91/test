Rails.application.routes.draw do
  resources :words, only: :index
  root "static_pages#start_page"
end
