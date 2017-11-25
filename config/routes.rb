Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :products do
    member do
      get 'buy'
    end
    collection do
      get 'execute'
      get 'payments'
      get 'success'
      get 'cancel'
  end
  end
  resources :payments do
    get 'execute'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
