Rails.application.routes.draw do
  

  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "*path", to: "pages#index"
end
