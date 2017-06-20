Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :destroy, :index, :show, :update]
  get 'users/:id' => 'users#show'
  put 'users/:id' => 'users#update'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  get 'users/new' => 'users#new', :as => 'new_user'
  get 'users' => 'users#index'
  # get 'users' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:user_id/artworks' => 'users#index'

  resources :artworks, only: [:create, :destroy, :show, :update]
  get 'artworks/:id' => 'artworks#show'
  put 'artworks/:id' => 'artworks#update'
  patch 'artworks/:id' => 'artworks#update'
  delete 'artworks/:id' => 'artworks#destroy'
  get 'artworks/:id/edit' => 'artworks#edit', :as => 'edit_artwork'
  get 'artworks/new' => 'artworks#new', :as => 'new_artwork'
  get 'artworks' => 'artworks#index'
  # get 'artworks' => 'artworks#new'
  post 'artworks' => 'artworks#create'

  resources :artwork_shares, only: [:create, :destroy, :index, :show, :update]
  get 'artwork_shares/:id' => 'artwork_shares#show'
  put 'artwork_shares/:id' => 'artwork_shares#update'
  patch 'artwork_shares/:id' => 'artwork_shares#update'
  delete 'artwork_shares/:id' => 'artwork_shares#destroy'
  get 'artwork_shares/:id/edit' => 'artwork_shares#edit', :as => 'edit_artwork_share'
  get 'artwork_shares/new' => 'artwork_shares#new', :as => 'new_artwork_share'
  get 'artwork_shares' => 'artwork_shares#index'
  # get 'artwork_shares' => 'artwork_shares#new'
  post 'artwork_shares' => 'artwork_shares#create'
end
