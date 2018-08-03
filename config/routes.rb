Rails.application.routes.draw do
  get 'doses/new'
  root to: "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
