Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :create, :new, :index, :destroy] do
    resources :doses, only: [:create, :new, :destroy]
  end

get '/', to: 'cocktails#index'
end
