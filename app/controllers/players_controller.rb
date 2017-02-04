class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :update, :edit]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      player_json = @player.as_json
      redirect_to @player, notice: player_json
    else
      render :new
    end
  end

  def update
    if @player.update_attributes(player_params)
      player_json = @player.as_json
      redirect_to @player, notice: player_json
    else
      render :edit
    end
  end

  def show
  end

  def edit
  end

  private

  #validates attributes, does not allow update/create if parameters hash does not have these params
  def player_params
    params.require(:player).permit(:name, :credits, :lifetime_spins, :password, :password_confirmation)
  end

  def find_player
    @player = Player.find(params[:id])
  end
end
