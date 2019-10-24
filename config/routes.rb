Rails.application.routes.draw do

  get 'likes/create'

  get 'likes/destroy'

  get 'likes/create'

  get 'likes/destroy'

  get 'secrets/index'

  post 'users/login' => 'sessions#create', as: :login
  get 'users/:id' => 'users#show', as: :users_show
  get 'users/:id/edit' => 'users#edit', as: :users_edit
  get 'users/new' => 'users#new', as: :users_new
  get 'users/new' => 'users#new', as: :new_user
  post 'users/create' => 'users#create', as: :create_user
  post 'users/update' => 'users#update', as: :users_update
  post 'users/delete' => 'users#delete', as: :users_delete
  
  delete 'sessions/:user_id' => 'sessions#destroy'
  get 'sessions/new' => 'sessions#new', as: :new_session
  

  get 'secrets' => 'secrets#index', as: :secrets
  post 'secrets/create' => 'secrets#create', as: :secrets_create
  post 'secrets/:id/destroy' => 'secrets#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
