Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get '/' => 'static_pages#index'
  resources :users, only: [:index, :show], controller: "users"
  resources :farms, controller: "farms"
  resources :user_farms, controller: "user_farms"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
