# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_15_235309) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "description"
    t.string "image"
    t.string "size"
    t.string "best_conditions"
    t.integer "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.string "date"
    t.float "wave_height_7AM"
    t.string "wind_direction_7AM"
    t.float "wind_speed_7AM"
    t.float "wave_height_12PM"
    t.string "wind_direction_12PM"
    t.float "wind_speed_12PM"
    t.float "wave_height_5PM"
    t.string "wind_direction_5PM"
    t.float "wind_speed_5PM"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user"
  end

  create_table "observed_conditons", force: :cascade do |t|
    t.string "date"
    t.string "observed_condition"
    t.string "board_ridden"
    t.string "match_forecast"
    t.integer "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
