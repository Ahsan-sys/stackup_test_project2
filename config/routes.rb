Rails.application.routes.draw do
  get 'usages/index'
  get 'trasections/index'
  get 'features/index'
  get 'subscriptions/index'
  get 'buyers/index'
  get 'plans/index'
  get 'users/index'
  devise_for :users


  
  root "home#index"
  # resources :users
  # resources :plans
  resources :users do
    resources :plans do
      resources :features
    end

    resources :subscriptions do 
      resources :usages  
      resources :trasections
    end
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
