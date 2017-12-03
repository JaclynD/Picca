Rails.application.routes.draw do

  devise_for :users

  root 'reviews#index'

  resources :users, only: :show

  resources :restaurants, only: [:index, :show,] do
  # get 'restaurants'=>'restaurants#index'
  # get 'restaurants/:id'=>'restaurants#show'
    resources :photos, only: [:create, :destroy]
    resources :reviews, only: [:new, :create, :destroy, :edit, :update]

    collection do
      get 'search'
    end

    collection do
      get 'criteria'
    end

  end
  # get 'reviews'=>'reviews#index'
  # get 'reviews/new'=>'reviews#new'
  # get 'restaurants/search' => 'restaurants#search'

end
