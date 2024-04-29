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

ActiveRecord::Schema[7.1].define(version: 2024_04_23_232533) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_types", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.bigint "train_plan_id", null: false
    t.integer "approach_number"
    t.integer "repeats"
    t.integer "mass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["train_plan_id"], name: "index_exercises_on_train_plan_id"
  end

  create_table "train_plans", force: :cascade do |t|
    t.bigint "train_type_id", null: false
    t.bigint "exercise_type_id", null: false
    t.integer "sequence_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_type_id"], name: "index_train_plans_on_exercise_type_id"
    t.index ["train_type_id"], name: "index_train_plans_on_train_type_id"
  end

  create_table "train_types", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.bigint "train_plan_id", null: false
    t.integer "current_step_number", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["train_plan_id"], name: "index_trains_on_train_plan_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.bigint "train_id", null: false
    t.bigint "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_workouts_on_exercise_id"
    t.index ["train_id"], name: "index_workouts_on_train_id"
  end

  add_foreign_key "exercises", "train_plans"
  add_foreign_key "train_plans", "exercise_types"
  add_foreign_key "train_plans", "train_types"
  add_foreign_key "trains", "train_plans"
  add_foreign_key "workouts", "exercises"
  add_foreign_key "workouts", "trains"
end
