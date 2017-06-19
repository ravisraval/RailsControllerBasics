Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :users
  get 'users/:id' => 'users#show'
  put 'users/:id' => 'users#update'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  get 'users/new' => 'users#new', :as => 'new_user'
  get 'users' => 'users#index'
  get 'users' => 'users#new'
  post 'users' => 'users#create'
end
