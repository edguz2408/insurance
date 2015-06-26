class SegurosSaludController < ApplicationController
    def new 
    end
    def create
        @segurosSalud = SegurosSalud.new(segurosSalud_params)
        if @segurosSalud.save
            flash[:success] = 'Muchas gracias por preferirnos, muy pronto le estaremos enviando su cotizacion'
            @segurosSalud.sendSegurosSalud_email
            @segurosSalud.sendSegurosSaludAlert
        else
            flash[:danger] = "Su peticion ha sido registrada anteriormente, muy pronto estará recibiendo su cotizacion"
            
        end
        redirect_to root_url
    end
    
  
  private
  def segurosSalud_params
    params.require(:segurosSalud).permit(:name, :dependientes, :telefono, :celular, :email, :plan)
  end
end
