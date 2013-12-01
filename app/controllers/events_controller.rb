class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @events = Event.all
    @facilities = Facility.all
    if @event = Event.where(id: params[:id]).first
      @places = @event.places
    else
      render 'events/404', status: 404
    end
  end

  def new
    @event = Event.new
  end

  def edit
    render 'events/404', status: 404
  end

  def create
    @event_post = params[:event]
    if @event_post
      @event = Event.new
      @event.name = @event_post[:name]
      @event.save

      if @event.errors.empty?
        #redirect_to event_path @event
        redirect_to controller: :events, action: :index
        #TODO redirect to event list
      else
        #TODO error here
      end
    else
      render 'events/new'
    end

  end

  def update
    render 'events/404', status: 404
  end

  def destroy
    render 'events/404', status: 404
  end
end
