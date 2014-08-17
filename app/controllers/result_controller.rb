class ResultController < ApplicationController

  CBI_LOCATION = [37.8660787, -122.2779125]
  NORTH_BERKELEY_BART_LOCATION = [37.8739699, -122.2834344]
  BERKELEY_BART_LOCATION = [37.8701015, -122.2681502]
  ASHBY_BART_LOCATION = [37.85303, -122.2699803]


  def index
    @address = params[:address]
    @coordinates = Geocoder.coordinates(@address)

    @distance_to_cbi = Geocoder::Calculations.distance_between(@coordinates, CBI_LOCATION)
    @distance_to_nbb = Geocoder::Calculations.distance_between(@coordinates, NORTH_BERKELEY_BART_LOCATION)
    @distance_to_bb = Geocoder::Calculations.distance_between(@coordinates, BERKELEY_BART_LOCATION)
    @distance_to_ab = Geocoder::Calculations.distance_between(@coordinates, ASHBY_BART_LOCATION)

  end

end
