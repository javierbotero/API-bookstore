Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users,
           only: [:show, :create, :update, :destroy]
  post '/loggin', to: 'users#loggin'
  resources :books, only: [:create, :update, :destroy]
end
