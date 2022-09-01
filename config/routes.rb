Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles, except: :index
  resources :lists, only: %i[index new show create] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: %i[destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/lists', to: 'lists#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
