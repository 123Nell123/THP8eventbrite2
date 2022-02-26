Rails.application.routes.draw do
 
  
  get 'photoevents/create'
  get 'photoevent/create'
  get 'avatars/create'
  root 'static_pages#index'

  devise_for :users
  resources :events do
    resources :photoevents, only: [:create]
  end

  resources :users , only: [ :show] do
    resources :avatars, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :static_pages , only: [ :index, :secret]



end
