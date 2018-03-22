class SalidasController < ApplicationController
  def index
    @salidas = Salida.where(terminada: nil)
    @salida_c = @salidas.count
    @salida_nueva = Salida.new
  end

  def new
    @salida_nueva = Salida.new
  end

  def show
    @salida = Salida.find(params[:id])
  end

  def edit
    @salida = Salida.find(params[:id])
  end

  def update
    @salida = Salida.find(params[:id])
    if @salida.update!(edit_params)
      redirect_to salida_path(@salida)
    end
  end

  def destroy
  end

  def create
    @salida_nueva = Salida.new(require_params)
    if @salida_nueva.save
      redirect_to salida_path(@salida_nueva)
    end
  end

  def finish
    @salida = Salida.find(params[:id])
    @salida.terminada = true
    @salida.save
    redirect_to terminadas_path
  end

  def ready
    @salidas = Salida.where(terminada: true)
    @salida_c = @salidas.count
  end

  private
  def require_params
    params.require(:salida).permit(:nombre, :telefono, :email)
  end

  def edit_params
    params.require(:salida).permit(:marca, :modelo, :nombre, :email, :telefono, :solicitud_cliente, :lecturas, :serie, :capacidad)
  end
end

