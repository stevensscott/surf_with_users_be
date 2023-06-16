require "http"
class MarineData

  RESPONSE_WAVE= "https://marine-api.open-meteo.com/v1/marine?latitude=41.55&longitude=-71.29&hourly=wave_height&timezone=America%2FNew_York"


  RESPONSE_WIND = "https://api.open-meteo.com/v1/forecast?latitude=41.55&longitude=-71.29&hourly=temperature_2m,windspeed_10m,winddirection_10m&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch"


  def get_response_wave
    HTTP.get(MarineData::RESPONSE_WAVE)
  end
  def get_response_wind
    HTTP.get(MarineData::RESPONSE_WIND)
  end

end
