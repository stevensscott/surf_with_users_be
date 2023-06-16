class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :make
      t.string :model
      t.string :description
      t.string :image
      t.string :size
      t.string :best_conditions
      t.integer :user

      t.timestamps
    end
  end
end
