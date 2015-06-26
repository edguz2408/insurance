class SegurosSaludMailer < ApplicationMailer
    def segurosSalud_email(segurosSalud)
        @segurosSalud = segurosSalud
        mail to: segurosSalud.email, subject: "Gracias por preferirnos"
    end
    
    def segurosSaludAlertEmail(segurosSalud)
        @segurosSalud = segurosSalud
        admins = ['edguzman2408@gmail.com', 'johannateresdsa@gmail.com']
        mail to: admins, subject: "Nueva cotizacion Seguro de salud"
    end
    
end
