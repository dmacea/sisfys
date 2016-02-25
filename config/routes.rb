Rails.application.routes.draw do

  namespace :registro do
    resources :cliente_servicio_detalles
  end
  namespace :registro do
    resources :cliente_servicios
  end
  namespace :registro do
    resources :servicios
  end
  namespace :registro do
    resources :vehiculos
  end
  namespace :registro do
    resources :dispositivos
  end
  namespace :basico do
    resources :modelos
  end
  namespace :basico do
    resources :marcas
  end
  namespace :registro do
    resources :lineas
  end


  namespace :registro do
    resources :clientes
    resources :vehiculos
  end

  namespace :basico do
    resources :persona_juridicas
    resources :paises
    resources :estados do 
      get :cargar_estados, on: :collection
    end 
    resources :municipios do
      get :cargar_municipios , on: :collection
    end 
    resources :parroquias
    resources :marca_vehiculos
    resources :modelo_vehiculos
    resources :tipo_vehiculos
    resources :operadoras
    resources :planes
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
