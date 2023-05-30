module Api
  module V1
    class StationsController < ApplicationController
      def show
        line_code = params[:line_code]
        line_station = Station.joins(:lines_stations).where(lines_stations: { line_code: line_code }).order(:order)

        render json: line_station
      end
    end
  end
end
