class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
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
    @facility = Facility.new
  end

  def edit
    render 'facilities/404'
  end

  def create
    @facility_post = params[:facility]
    if @facility_post
      @facility = Facility.new
      @facility.name = @facility_post[:name]
      @facility.save

      if @facility.errors.empty?
        #redirect_to facility_path @event
        flash[:notice] = "Post successfully created"
        redirect_to controller: :facilities, action: :index
        #TODO redirect to facilities list
      else
        #TODO error here
      end
    else
      render 'facilities/new'
    end
  end

  def update
    render 'facilities/404'
  end

  def destroy
    render 'facilities/404'
  end
end
