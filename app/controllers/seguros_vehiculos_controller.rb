class SegurosVehiculosController < ApplicationController
  def create
    @seguroVehiculo = SegurosVehiculo.new(seguroVehiculos_params)
    
    if @seguroVehiculo.save
      flash[:success] = 'Muchas gracias por preferirnos, muy pronto le estaremos enviando su cotizacion'
      @seguroVehiculo.sendSegurosVehiculo_email
      @seguroVehiculo.sendSegurosVehiculoAlert
    else
      flash[:danger] = "Su peticion ha sido registrada anteriormente, muy pronto estará recibiendo su cotizacion"
    end
    
    redirect_to root_url
    
  end
  
  
  private
    def seguroVehiculos_params
      params.require(:seguroVehiculo).permit(:nombre, :telefono, :celular, :email, :marca, :model, :compania, :año)
    end
  
end
