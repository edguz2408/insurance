class Contacto < ActiveRecord::Base
     before_save { self.email = email.downcase }
    validates :nombre, presence: true, length: { maximum: 50 }
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    
    def sendContact_email
        ContactoMailer.contact_email(self).deliver_now
    end
    
    def sendContactAlert
        ContactoMailer.contactoAlertEmail(self).deliver_now
    end
    
end
