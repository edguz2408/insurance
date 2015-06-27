class FarmaciasController < ApplicationController
  def index
    @farmacias = Farmacia.where('plan LIKE ?', '%' + params[:plan] + '%')
  end
end
