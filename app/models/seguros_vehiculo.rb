class SegurosVehiculo < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :nombre, presence: true, length: { maximum: 50 }
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
    
    def sendSegurosVehiculo_email
        SegurosVehiculosMailer.segurosVehiculos_email(self).deliver_now
    end
    
    def sendSegurosVehiculoAlert
        SegurosVehiculosMailer.segurosVehiculosAlertEmail(self).deliver_now
    end
    
end
