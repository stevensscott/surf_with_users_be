class MarineDataConversions
 #CONVERTS WAVE HEIGHT FROM METRIC TO FEET#
  def self.metric_to_feet(wave_height_metric)
    (wave_height_metric * 3.28084).round(1)   
  end

#CONVERTS CARDINAL DIRECTION TO TEXT BASED ON MY OWN FORMULA#
  def self.convert_wind_from_cardinal_to_direction(cardinal_direction)
    if (cardinal_direction > 0  && cardinal_direction < 50) || (cardinal_direction > 309 && cardinal_direction<400)
      return "North"   
    elsif (cardinal_direction > 139  && cardinal_direction < 231)
      return "South"    
    elsif (cardinal_direction > 230  && cardinal_direction < 310)
      return "Sideshore West" 
    elsif (cardinal_direction > 50  && cardinal_direction < 140)
      return "Sideshore East"
    end
  end
end