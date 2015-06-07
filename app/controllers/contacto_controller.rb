class ContactoController < ApplicationController
  def create
    @contacto = Contacto.new(contacto_params)
    
    if @contacto.save
      flash[:success] = 'Muchas gracias por preferirnos, proximamente le estaremos contactando'
      @contacto.sendContact_email
    else
      flash[:danger] = 'Su solicitud ha sido registrada, proximamente le estaremos contactando'
    end
    
    redirect_to root_url
      
  end
  
  private
    def contacto_params
      params.require(:contacto).permit(:nombre, :telefono, :celular, :email, :mensaje)
    end
  
end
