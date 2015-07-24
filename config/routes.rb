Rails.application.routes.draw do
  resources :venta

  resources :producto_inmuebles

  resources :producto_vehiculos

  resources :producto_personas

  resources :producto_tecnologia

  resources :informacion_productos

  resources :compania_seguros

  resources :puntos_venta

  resources :empresas_grandes

  resources :usuarios

  #Ruta para descargar pdfs
  resources :usuarios do
    member do
      get :download
    end
  end



  root 'sessions#new'

  #Ruta pa Twilio
  post 'twilio/voice' => 'twilio#voice'

  #Ruta para el inicio
  get '/inicio' => 'inicio#index', as: 'inicio'

  #Ruta para el perfil
  get '/perfil' => 'perfil#perfil', as: 'perfil'



  #sesiones
  resource :session, only: [:new, :create, :destroy]


end
