class SalidasController < ApplicationController
  def index
    @salidas = Salida.all
    @salida_c = Salida.count
    @salida_nueva = Salida.new
  end

  def new
    @salida_nueva = Salida.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @salida_nueva = Salida.new(require_params)
    if @salida_nueva.save
      redirect_to salidas_path
    end
  end

  private
  def require_params
    params.require(:salida).permit(:nombre, :telefono, :email)
  end
end
