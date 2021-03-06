Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"
  get "/coupon", to: "coupons#index"
  
  resources :users, only: [:create] do
    collection do
      get :sign_up
      get :edit
      patch :update
      get :sign_in
      post :login
      delete :sign_out
    end
  end

  resources :coupons, only: [] do
    collection do
      get :change
    end
  end

end
