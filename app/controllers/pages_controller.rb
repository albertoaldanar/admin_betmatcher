class PagesController < ApplicationController
  def home
    @salida_nueva = Salida.new
  end
end
