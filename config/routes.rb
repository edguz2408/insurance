Rails.application.routes.draw do
  

  get 'contacto/create'

  root 'static_pages#home'
  
  get 'segurosVehiculos' => 'static_pages#carInsurance'
  get 'segurosSalud' => 'static_pages#healthInsurance'
  get 'crearSegSalud' => 'seguros_salud#new'
  post 'crearSegSalud' => 'seguros_salud#create'
  post 'crearSegVehiculo' => 'seguros_vehiculos#create'
  post 'crearContacto' => 'contacto#create'
end
