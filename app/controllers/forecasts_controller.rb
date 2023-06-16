class ForecastsController < ApplicationController
  def index
    @forecasts = Forecast.last(5)
    render json: @forecasts.as_json
  end
end
