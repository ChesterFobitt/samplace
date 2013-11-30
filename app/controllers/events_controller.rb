class EventsController < ApplicationController
  def index
    render 'events/404', status: 404
  end

  def show
    @events = Event.all
    if @event = Event.where(id: params[:id]).first
      @places = @event.places
    else
      render 'events/404', status: 404
    end
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
