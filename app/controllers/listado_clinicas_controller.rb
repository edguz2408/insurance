class ListadoClinicasController < ApplicationController
  
  def index
    #@clinicas = Clinica.paginate(per_page: 15, page: params[:page])
    @clinicas = Clinica.where('plan Like ?','%' + params[:plan] + '%')
  end
  
end
