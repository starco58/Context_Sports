Rails.application.routes.draw do
  devise_for :users

  root 'players#index'
  # Routes for the Response resource:
  # CREATE
  get('/responses/new', { :controller => 'responses', :action => 'new' })
  get('/create_response', { :controller => 'responses', :action => 'create' })

  # READ
  get('/responses', { :controller => 'responses', :action => 'index' })
  get('/responses/:id', { :controller => 'responses', :action => 'show' })

  # UPDATE
  get('/responses/:id/edit', { :controller => 'responses', :action => 'edit' })
  get('/update_response/:id', { :controller => 'responses', :action => 'update' })

  # DELETE
  get('/delete_response/:id', { :controller => 'responses', :action => 'destroy' })
  #------------------------------

  # Routes for the Play resource:
  # CREATE
  get('/plays/new', { :controller => 'plays', :action => 'new' })
  get('/create_play', { :controller => 'plays', :action => 'create' })

  # READ
  get('/plays', { :controller => 'plays', :action => 'index' })
  get('/plays/:id', { :controller => 'plays', :action => 'show' })

  # UPDATE
  get('/plays/:id/edit', { :controller => 'plays', :action => 'edit' })
  get('/update_play/:id', { :controller => 'plays', :action => 'update' })

  # DELETE
  get('/delete_play/:id', { :controller => 'plays', :action => 'destroy' })
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

  # Routes for the Player resource:
  # CREATE
  get('/players/new', { :controller => 'players', :action => 'new' })
  get('/create_player', { :controller => 'players', :action => 'create' })

  # READ
  get('/players', { :controller => 'players', :action => 'index' })
  get('/players/:id', { :controller => 'players', :action => 'show' })

  # UPDATE
  get('/players/:id/edit', { :controller => 'players', :action => 'edit' })
  get('/update_player/:id', { :controller => 'players', :action => 'update' })

  # DELETE
  get('/delete_player/:id', { :controller => 'players', :action => 'destroy' })
  #------------------------------

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
