SampleApp::Application.routes.draw do

  resources :programs

  # get "pages/home"
  # get "pages/contact"
  # get "pages/about" 
  # get "pages/help"
  # get "users/new"
  # get "sessions/new"
  
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root		    :to => 'pages#home'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
#== Route Map
# Generated on 03 Mar 2013 17:32
#
#              POST   /programs(.:format)          programs#create
#  new_program GET    /programs/new(.:format)      programs#new
# edit_program GET    /programs/:id/edit(.:format) programs#edit
#      program GET    /programs/:id(.:format)      programs#show
#              PUT    /programs/:id(.:format)      programs#update
#              DELETE /programs/:id(.:format)      programs#destroy
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     sessions POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
#      session DELETE /sessions/:id(.:format)      sessions#destroy
#         root        /                            pages#home
#      contact        /contact(.:format)           pages#contact
#        about        /about(.:format)             pages#about
#         help        /help(.:format)              pages#help
#       signup        /signup(.:format)            users#new
#       signin        /signin(.:format)            sessions#new
#      signout        /signout(.:format)           sessions#destroy
