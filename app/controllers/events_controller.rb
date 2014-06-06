class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new

    @event.game = params[:game]

    @event.played_on = params[:played_on]

    @event.gametime = params[:gametime]

    @event.home_team = params[:home_team]

    @event.away_team = params[:away_team]



    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])


    @event.game = params[:game]

    @event.played_on = params[:played_on]

    @event.gametime = params[:gametime]

    @event.home_team = params[:home_team]

    @event.away_team = params[:away_team]



    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy


    redirect_to "/events", :notice => "Event deleted."

  end
end
