class ListadoClinicasController < ApplicationController
  
  def index
    @clinicas = Clinica.paginate(per_page: 15, page: params[:page])
    #@clinicas = Clinica.all
  end
  
  #def find
   # @clinicas = Clinica.paginate(per_page: 15, page: params[:page],:conditions => ['client_id = ?', @clinicas.ubicacion])
  #end
  
end
