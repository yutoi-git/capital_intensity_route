module Api
  module V1
    class LinesController < ApplicationController
      def index
        line = Line.all

        render json: line
      end

      def show
        line = Line.find_by(line_code: params[:line_code])

        render json: line
      end
    end
  end
end
