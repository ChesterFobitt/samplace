class PlacesController < ApplicationController
  def index
    @places = Place.all
    render text: @places.map{ |p| "#{p.id} -> #{p.name} -> #{p.address} -> #{p.price_per_hour.to_i.to_s.gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1 ")}"}.join('<br/>')
  end

  def create
    name = params[:name]
    address = params[:address]
    price_per_hour = params[:price_per_hour]
    description = params[:description]

    @place = Place.new
    @place.name = name
    @place.address = address
    @place.price_per_hour = price_per_hour
    @place.description = description
    @place.save()

    render text: "<b>TODO: </b>place create #{@place.id}<br/>" + "Make request like this http://localhost:3000/places/create?name=Test+Name&address=Test+Address&price_per_hour=2000&description=Test+Description"
  end
end
