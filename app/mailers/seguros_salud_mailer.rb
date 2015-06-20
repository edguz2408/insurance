class SegurosSaludMailer < ApplicationMailer
    def segurosSalud_email(segurosSalud)
        @segurosSalud = segurosSalud
        mail to: segurosSalud.email, subject: "Gracias por preferirnos"
    end
end
