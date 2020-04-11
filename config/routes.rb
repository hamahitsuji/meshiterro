Rails.application.routes.draw do

  root 'post_images#index'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show] do
  	resource :post_comments, only: [:create]
  end

end
