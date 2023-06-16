class AddToForecast < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :user, :integer
  end
end
