# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_10_004045) do

  create_table "formulation_ingredients", id: false, force: :cascade do |t|
    t.integer "formulation_id"
    t.integer "ingredient_id"
    t.text "percentage"
  end

  create_table "formulations", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "name"
    t.text "amount1"
    t.text "amount2"
  end

  create_table "ingredients", id: :decimal, force: :cascade do |t|
    t.text "name"
    t.text "minimum_percentage"
    t.text "maximum_percentage"
    t.text "description"
    t.text "classes"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "dateOfBirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
