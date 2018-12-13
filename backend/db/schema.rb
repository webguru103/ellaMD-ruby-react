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

ActiveRecord::Schema.define(version: 2018_12_13_011106) do

  create_table "formulation_ingredients", force: :cascade do |t|
    t.integer "formulation_id"
    t.integer "ingredient_id"
    t.string "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formulation_id", "ingredient_id"], name: "combine_percentage_index", unique: true
    t.index ["formulation_id"], name: "index_formulation_ingredients_on_formulation_id"
    t.index ["ingredient_id"], name: "index_formulation_ingredients_on_ingredient_id"
  end

  create_table "formulations", force: :cascade do |t|
    t.string "name"
    t.string "amount1"
    t.string "amount2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "minimum_percentage"
    t.string "maximum_percentage"
    t.string "description"
    t.text "classes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "dateOfBirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "combine_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "ingredient_id"
    t.integer "formulation_id"
    t.integer "combined_id"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test-formulation_ingredients", id: false, force: :cascade do |t|
    t.integer "formulation_id"
    t.integer "ingredient_id"
    t.text "percentage"
  end

  create_table "test-formulations", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "name"
    t.text "amount1"
    t.text "amount2"
  end

  create_table "test-ingredients", id: :decimal, force: :cascade do |t|
    t.text "name"
    t.text "minimum_percentage"
    t.text "maximum_percentage"
    t.text "description"
    t.text "classes"
  end

end
