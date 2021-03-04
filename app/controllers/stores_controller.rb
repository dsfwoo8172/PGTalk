# frozen_string_literal: true

class StoresController < ApplicationController
  def get_location
    url = URI("https://maps.googleapis.com/maps/api/geocode/json?latlng=#{params[:latitude]},#{params[:longitude]}&key=#{Rails.application.secrets.google_places_key}")
    # http_call = open(url).read
    response_body = Net::HTTP.get_response(url).body
    @stores = JSON.parse(response_body, { symbolize_names: true })
    # @stores = response[:results]
    respond_to do |format|
      format.html
      format.json { render json: @stores }
    end
  end
  def index
    @stores = Store.all
  end
end
