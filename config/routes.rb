Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :edit]
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get 'homes/top'
  get 'homes/about' => 'homes#about', as: 'about'
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
