class PlaysController < ApplicationController
  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new

    @play.type = params[:type]

    @play.fault = params[:fault]



    if @play.save
      redirect_to "/plays", :notice => "Play created successfully."
    else
      render 'new'
    end

  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])


    @play.type = params[:type]

    @play.fault = params[:fault]



    if @play.save
      redirect_to "/plays", :notice => "Play updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @play = Play.find(params[:id])

    @play.destroy


    redirect_to "/plays", :notice => "Play deleted."

  end
end
