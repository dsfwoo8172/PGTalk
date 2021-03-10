# frozen_string_literal: true

class StoresController < ApplicationController

  # def get_location # 先不用
  #   url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{params[:latitude]},#{params[:longitude]}&radius=1500&type=restaurant&language=zh-TW&key=#{Rails.application.secrets.google_places_key}")
  #   response_body = Net::HTTP.get_response(url).body
  #   response = JSON.parse(response_body, { symbolize_names: true })
  #   @stores = response[:results]
  #   respond_to do |format|
  #     format.html { render :index }
  #     format.json { render json: @stores }
  #   end
  # end

  # def create # 先不用
    # @store = Store.new(store_params)
    # respond_to do |format|
    #   format.html { redirect_to stores_path, notice: 'Store Added!' } if @store.save!
    # end
  # end

  def index
    @stores = Store.all
  end

  private

  def store_params
    params.require(:store).permit(:store_name, :latitude, :longitude, :address)
  end
end
