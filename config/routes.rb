Rails.application.routes.draw do
  root 'homes#index'
  
  devise_for :users 
  resources :patients, :medical_records,:doctors,:hospitals,:appointments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

