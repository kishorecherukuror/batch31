Rails.application.routes.draw do
 

  resources :brands
  resources :spects do 
    member do
      get 'new/:id', to: 'spects#new' , as: 'spect_new'
    end
  end
  resources :products
  resources :categories
  resources :libraries



  get 'teachers/update'
  get 'teachers/new'

  get 'teachers/create'
  post 'teachers/create'
  get 'teachers/index', defaults: { format: 'js' }
  post 'teachers/index' , defaults: { format: 'js' }
  
  get '/teachers/:id', to: 'teachers#edit' ,as: 'kishore'
  patch 'teachers/:id', to: 'teachers#update', as: 'teachers'
  get '/teachers/show/:id', to: 'teachers#show' ,as: 'show'

  delete '/teachers/destroy/:id', to: 'teachers#destroy' ,as: 'destroy'
  
  
  get 'mathematics/prime'
  post 'mathematics/prime'

  get 'mathematics/evenodd'
  post 'mathematics/evenodd'

  get 'mathematics/palindrome'
  post 'mathematics/palindrome'

  get 'calculator/addition'
  post 'calculator/addition'
  get 'calculator/subtraction'
  post 'calculator/subtraction'
  get 'calculator/multiplication'
  post 'calculator/multiplication'
  get 'calculator/division'
  post 'calculator/division'
<<<<<<< HEAD

  get 'students/create'
  post 'students/create'
  get 'students/edit'
  get 'students/show'
=======
  get 'marks/create'
  post 'marks/create'
  get 'students/create'
  post 'students/create'


  get 'students/edit'


  get 'students/show'
  post 'students/show'

>>>>>>> f10ecdb58465259266b2a24bb0aa02df35e0fb82
  get 'students/index'
  get 'students/delete'

  get 'employee/create'
  get 'employee/show'
  post 'employee/show'  
  get 'employee/index' 

  get 'product/create'
  get 'product/show'
  post 'product/show'  
  get 'product/index'
  post 'product/index'  
  #get 'product/display'
  #post 'product/display'

  get '/product/display/:id', to: 'product#display', as: 'display'

  get '/product/edit/:id', to: 'product#edit', as: 'edit'

  patch 'product/:id', to: 'product#update', as: 'update'

  delete 'product/:id', to: 'product#delete', as: 'delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
<<<<<<< HEAD
   root 'product#index'
=======
   root 'teachers#index'
>>>>>>> f10ecdb58465259266b2a24bb0aa02df35e0fb82

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
