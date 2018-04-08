class MaterialsController < ApplicationController
  def index
    @salida = Salida.find(params[:id])
  end

  def new
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])
    @material.update!(edit_params)
    if @material.save
      redirect_to salida_path(@material.salida_id)
    end
  end

  def vuelta
    @material = Material.find(params[:id])
    @salida = Salida.where(id: @material.salida_id)
    @material.vuelta = true
    @material.save
    redirect_to salida_path(@material.salida_id)
  end

  def create
    @material = Material.new(require_params)
    if @material.save
      redirect_to salida_path(@material.salida_id)
    end
  end

  def show
  end

  private

  def require_params
    params.require(:material).permit( :salida_id, :codigo, :cantidad, :descripcion)
  end

  def edit_params
    params.require(:material).permit(:change)
  end

end
