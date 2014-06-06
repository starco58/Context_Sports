class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new

    @player.name = params[:name]

    @player.position = params[:position]

    @player.image_url = params[:image_url]



    if @player.save
      redirect_to "/players", :notice => "Player created successfully."
    else
      render 'new'
    end

  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])


    @player.name = params[:name]

    @player.position = params[:position]

    @player.image_url = params[:image_url]



    if @player.save
      redirect_to "/players", :notice => "Player updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @player = Player.find(params[:id])

    @player.destroy


    redirect_to "/players", :notice => "Player deleted."

  end
end
