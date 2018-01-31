class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new(game_params)
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path
    else
      render :new
  end

  def update
      @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to games_path
    else
      render :edit
    end

  end

  def edit
     @game = Game.find(params[:id])
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit( :local, :visit, :stadium, :date)
  end
end
