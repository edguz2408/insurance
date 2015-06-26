class SegurosVehiculosMailer < ApplicationMailer
     def segurosVehiculos_email(segurosVehiculos)
        @segurosVehiculos = segurosVehiculos
        mail to: segurosVehiculos.email, subject: "Gracias por preferirnos"
     end
    
    def segurosVehiculosAlertEmail(segurosVehiculos)
        @segurosVehiculos = segurosVehiculos
        admins = ['edguzman2408@gmail.com', 'johannateresa@gmail.com']
        mail to: admins, subject: "Nueva cotizacion Seguro de vehiculos"
    end
end
