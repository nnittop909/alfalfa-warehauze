Rails.application.routes.draw do

  resources :locations
  root "projects#index"
  resources :materials
  resources :contractors
  resources :uploads
  devise_for :users
  resources :operators
  resources :bid_expenses
  
  resources :petty_cashes do
    resources :particulars
    resources :cash_sources
  end

  resources :equipments do 
    resources :equipment_expenses
  end
  
  resources :projects do 
    resources :billable_materials
    resources :equipment_schedules
    resources :uploads
    resources :material_expenses
    resources :locations
    resources :biddings
    resources :bidders
    resources :bidder_amounts
    resources :bid_collections
  end
    resources :billable_materials
    resources :equipment_schedules
    resources :material_expenses
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
