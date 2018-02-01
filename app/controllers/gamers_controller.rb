class GamersController < ApplicationController
  def index
    @gamers = Gamer.all
    @gamers_c = Gamer.count
  end

  def edit
  end

  def update
  end

  def new
    @gamer = Gamer.new
  end

  def create
    @gamer = Gamer.new(require_params)
    if @gamer.save
      redirect_to gamers_path
    else
      render :new
    end
  end

  private
  def require_params
    params.require(:gamer).permit(:username, :country, :coins, :rankinkg)
  end
end
