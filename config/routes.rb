Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get '/' => 'static_pages#index'
  resources :users, only: [:index, :show], controller: "users"
  resources :farms, only: [:show, :get_farms], controller: "farms"
  resources :user_farms, controller: "user_farms"
  resources :comments, except: [:new, :edit]
  scope "/api" do
	    resources :comments
	    post "/comment/:id/add" => "comment#create"    
	end
  scope "/api" do
    resources :farms, only:[:get_farms]
    get "/farms" => "farms#get_farms"
    post "/farms" => "farms#get_farms"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
