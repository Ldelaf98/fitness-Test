# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_08_000038) do

  create_table "client_trainer_relations", force: :cascade do |t|
    t.integer "client_id"
    t.integer "trainer_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "trainer_user_id"
    t.integer "client_user_id"
  end

  create_table "exercise_sets", force: :cascade do |t|
    t.integer "rep_count"
    t.integer "rep_value"
    t.string "rep_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "task_id"
    t.string "state"
    t.index ["task_id"], name: "index_exercise_sets_on_task_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_exercises_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "exercise_id"
    t.integer "unit_id"
    t.index ["exercise_id"], name: "index_goals_on_exercise_id"
    t.index ["unit_id"], name: "index_goals_on_unit_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.string "height"
    t.string "weight"
    t.string "body_fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_measurements_on_user_id"
  end

  create_table "role_assignments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_assignments_on_role_id"
    t.index ["user_id"], name: "index_role_assignments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exercise_id"
    t.integer "workout_id"
    t.string "state"
    t.index ["exercise_id"], name: "index_tasks_on_exercise_id"
    t.index ["workout_id"], name: "index_tasks_on_workout_id"
  end

  create_table "test_dbs", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_exercise_relationships", force: :cascade do |t|
    t.string "workout_id"
    t.string "exercise_id"
    t.integer "sets"
    t.integer "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.integer "user_id"
    t.string "state"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

end
