class ContactoMailer < ApplicationMailer
    def contact_email(contacto)
        @contacto = contacto
        mail to: contacto.email, subject: "Gracias por preferirnos"
    end
end