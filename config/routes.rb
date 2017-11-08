Rails.application.routes.draw do


  devise_for :users
  root "pages#index"


  namespace :api do
    namespace :v1 do
      resources :users
      resources :hoas
      resources :condo_documents
      #resources :repairs

    end
  end


  resources :hoas do
    resources :condo_documents
    resources :repairs, only: [:index, :show, :new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "*path", to: "pages#index"
end
