Rails.application.routes.draw do
  #get '/' => "home#top"
  root "home#top"
  get	"/users/new" => "users#new"
  get	"/search" => "search#show"
  get	"/mypage" => "users#mypage"
  get	"/posts/new" => "posts#new"
  get	"/likes/show" => "like#show"
  get "/login" => "users#login_form"
  get '/likes' => "likes#show"
  post	"/likes/:id/create" => "likes#create"
  get	"/posts/:id" => "posts#show"
  # get "/show_comment" => "posts#show_comment"

  post	"/users/create" => "users#create"
  post "/login" => "users#login"
  post "/logout" => "users#logout"
  post	"/posts/create" => "posts#create"

  post "/posts/:id" => "posts#create_comment"
  delete	"/likes/destroy" => "like#delete"
  get	"/users/password_update" => "users#password_update_show"
  post	"/users/password_update" => "users#password_update"

  # resources :posts do
  # get 'page/:page', :action => :top, :on => :collection
  # end

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
