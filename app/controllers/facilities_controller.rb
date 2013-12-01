class FacilitiesController < ApplicationController
  def index
    render 'facilities/404'
  end

  def show
    @events = Event.all
    @facilities = Facility.all
    if @facility = Facility.where(id: params[:id]).first
      @places = @facility.places
    else
      render 'facilities/404', status: 404
    end
  end

  def new
    render 'facilities/404'
  end

  def edit
    render 'facilities/404'
  end

  def create
    render 'facilities/404'
  end

  def update
    render 'facilities/404'
  end

  def destroy
    render 'facilities/404'
  end
end
