Rails.application.routes.draw do
  root 'hello_world#index'
  get 'hello_world', to: 'hello_world#index'
  get 'bye_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/:id', to: 'hello_world#index';
  get 'posts/:id/edit', to: 'posts#update';
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
