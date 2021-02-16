Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users,
           only: [:create, :update, :destroy]
  post '/user-books', to: 'users#user_books'
  post '/loggin', to: 'users#loggin'
  resources :books, only: [:create, :update, :destroy]
  resources :comments, only: [:show, :create, :update, :destroy]
end
