class Clinica < ActiveRecord::Base
    
    def self.search(param)
        search_condition = "%" + search + "%"
        find(:all, :conditions => ['nombre LIKE ?', search_condition])
    end
    
end
