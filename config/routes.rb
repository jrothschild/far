Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  


  root to: "users#index"

  # get '/faculty_members' => 'faculty_members#index'
  # get '/users' => 'users#index'
  # get '/faculty_members/new' => 'faculty_members#new'
  # get '/faculty_members/:id' => 'faculty_members#show', as: :faculty_member
  # post '/faculty_members' => 'faculty_members#create'
  # get '/faculty_members/:id/edit' => 'faculty_members#edit'
  # patch '/faculty_members/:id' => 'faculty_members#update'
  # delete '/faculty_members/:id' => 'faculty_members#destroy'

  get '/pages' => 'pages#index'


  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  get '/users/all' => 'users#all'
  get '/users/:id' => 'users#show', as: :user
  post '/users' => 'users#create'
  get '/users/:id/edit' => 'users#edit', as: :user_edit
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/publications' => 'publications#index'
  get '/publications/new' => 'publications#new'
  get '/publications/:id' => 'publications#show', as: :publication
  post '/publications' => 'publications#create'
  get '/publications/:id/edit' => 'publications#edit'
  patch '/publications/:id' => 'publications#update'
  delete '/publications/:id' => 'publications#destroy'

  get '/activities' => 'activities#index'
  get '/activities/new' => 'activities#new'
  get '/activities/:id' => 'activities#show', as: :activity
  post '/activities' => 'activities#create'
  get '/activities/:id/edit' => 'activities#edit'
  patch '/activities/:id' => 'activities#update'
  delete '/activities/:id' => 'activities#destroy'


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
