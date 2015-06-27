class ContactoMailer < ApplicationMailer
    def contact_email(contacto)
        @contacto = contacto
        mail to: contacto.email, subject: "Gracias por preferirnos"
    end
    
     def contactoAlertEmail(contacto)
        @contacto = contacto
        admins = ['edguzman2408@gmail.com', 'johannateresa@gmail.com']
        mail to: admins, subject: "Nueva peticion de contacto"
     end
    
end