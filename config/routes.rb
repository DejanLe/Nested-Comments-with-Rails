Rails.application.routes.draw do
  root to: 'comments#index'
  resources :comments, only: [:index, :create]
  get '/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
