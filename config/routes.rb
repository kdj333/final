Final::Application.routes.draw do

  # Specify a custom home page
  get "/" => "videos#index"

  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Reviews

  # --- Create
  get "/videos/new" => 'videos#new'
  post "/videos" => 'videos#create'

  # --- Read
  get "/videos" => 'videos#index'
  get "/videos/:id" => 'videos#show'

  # -- Update
  get "/videos/:id/edit" => 'videos#edit'
  patch "/videos/:id" => 'videos#update'

  # --- Delete
  delete "/videos/:id" => 'videos#destroy'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

  # Resource: Tips

  # --- Create
  get "/tips/new" => 'tips#new'
  post "/tips" => 'tips#create'

  # --- Read
  get "/tips" => 'tips#index'
  get "/tips/:id" => 'tips#show'

  # -- Update
  get "/tips/:id/edit" => 'tips#edit'
  patch "/tips/:id" => 'tips#update'

  # --- Delete
  delete "/tips/:id" => 'tips#destroy'

  # Resource: Ratings

  # --- Create
  get "/ratings/new" => 'ratings#new'
  post "/ratings" => 'ratings#create'

  # --- Read
  get "/ratings" => 'ratings#index'
  get "/ratings/:id" => 'ratings#show'

  # -- Update
  get "/ratings/:id/edit" => 'ratings#edit'
  patch "/ratings/:id" => 'ratings#update'

  # --- Delete
  delete "/ratings/:id" => 'ratings#destroy'





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
