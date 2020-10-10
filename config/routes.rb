Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users,only: [:show,:index,:edit,:update] do
  get :search, on: :collection
  end
  resources :books
  get 'home/about' => 'homes#about', as: 'about'
  get 'search' => 'search#search'
end