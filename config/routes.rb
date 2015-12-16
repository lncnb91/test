Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :authors
  resources :words, only: :index
  root "static_pages#start_page"
end
