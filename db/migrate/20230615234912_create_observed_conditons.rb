class CreateObservedConditons < ActiveRecord::Migration[7.0]
  def change
    create_table :observed_conditons do |t|
      t.string :date
      t.string :observed_condition
      t.string :board_ridden
      t.string :match_forecast
      t.integer :user

      t.timestamps
    end
  end
end
