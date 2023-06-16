class CreateForecasts < ActiveRecord::Migration[7.0]
  def change
    create_table :forecasts do |t|
      t.string :date
      t.float :wave_height_7AM
      t.string :wind_direction_7AM
      t.float :wind_speed_7AM
      t.float :wave_height_12PM
      t.string :wind_direction_12PM
      t.float :wind_speed_12PM
      t.float :wave_height_5PM
      t.string :wind_direction_5PM
      t.float :wind_speed_5PM

      t.timestamps
    end
  end
end
