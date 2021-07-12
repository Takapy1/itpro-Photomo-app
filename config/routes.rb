Rails.application.routes.draw do
  resources :comments
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :viewers
  resources :photographers
  resources :photos
  root to: 'photos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
