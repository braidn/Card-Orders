EstOrders::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/' => 'devise/sessions#new'
  end

  resources :forgotten_users

  resources :shippings
  resources :billings
  resources :customer_notes
  resources :customers
  resources :tooling_specifications
  resources :stripe_specifications
  resources :step_repeats
  resources :skids
  resources :security_specs
  resources :sales_terms
  resources :sales_reps
  resources :rfid_inlays
  resources :rfid_inlay_categories
  resources :registration_levels
  resources :proof_costs
  resources :product_formats
  resources :plate_costs
  resources :mat_categories
  resources :materials
  resources :mag_tapes
  resources :mag_ink_types
  resources :machine_stripe_standards
  resources :machine_id_standards
  resources :press_standards
  resources :laminates
  resources :ink_varnishes
  resources :inksignatures
  resources :inkpmscodes
  resources :inkcatagories
  resources :foiltypes
  resources :foils
  resources :encodingstandards
  resources :dietypes
  resources :dies
  resources :coretypes
  resources :cores
  resources :contacts
  resources :companies
  resources :commissions
  resources :boxtypes
  resources :boxes
  resources :binderyspecs
  resources :binderies
  resources :adhesives

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
