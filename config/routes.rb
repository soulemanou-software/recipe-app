Rails.application.routes.draw do
  get 'pages/home'
  root 'public_recipes#index'
  get 'general_shopping_list/index'
  resources :recipe_foods
  devise_for :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  get 'shopping_list' => 'foods#shopping_list'
  # resources :food_recipes
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users, only: [:index, :show] do
  # end
  # root "pages#home"
end
