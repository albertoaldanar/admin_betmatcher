class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @salida_nueva = Salida.new
    @salidas_no_terminadas = Salida.where(terminada: nil)
    @salidas = Salida.all
    @terminadas = Salida.where(terminada: true)
    if @terminadas.count >0
      @pct = (@terminadas.count * 100) / @salidas.count
    else
      @pct = 0
    end

  end
end
