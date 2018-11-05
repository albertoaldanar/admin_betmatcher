class SalidasController < ApplicationController
  before_action :authenticate_user!
  def index
    @salidas = Salida.where(terminada: nil).order('id DESC')
    all_s = Salida.order(:folio)
    @salida_c = @salidas.count
    @salida_nueva = Salida.new

    respond_to do |format|
      format.html
      format.csv {render text: all_s.to_csv }
    end
  end

  def new
    @salida_nueva = Salida.new
  end

  def show
    @salida = Salida.find(params[:id])
    @materials = Material.where(salida_id: @salida.id)
    @material = Material.new
    @material.salida_id = @salida.id
    @mat_vuelta = Material.all
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
    @salida = Salida.find(params[:id])
    if @salida.destroy
      redirect_to terminadas_path
    end
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
    @salidas = Salida.where(terminada: true).order('id DESC')
    @salida_c = @salidas.count
  end

  private
  def require_params
    params.require(:salida).permit(:nombre, :telefono, :email, :solicitud_cliente, :contacto, :direccion)
  end

  def edit_params
    params.require(:salida).permit(:marca, :modelo, :lecturas, :serie, :capacidad, :nombre, :telefono, :solicitud_cliente, :contacto, :direccion, :email, :mecanico)
  end

  def mat_params
    params.require(:material).permit(:salida_id, :codigo, :cantidad, :descripcion)
  end

  def ed_params
    params.require(:material).permit(:change)
  end
end

