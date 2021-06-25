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

ActiveRecord::Schema.define(version: 0) do

  create_table "Account", primary_key: "username", id: :string, charset: "latin1", force: :cascade do |t|
    t.string "password"
    t.integer "role_id"
    t.integer "status_id"
    t.index ["role_id"], name: "role_id"
    t.index ["status_id"], name: "status_id"
  end

  create_table "Role", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "name"
  end

  create_table "Status", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "Account", "Role", column: "role_id", name: "Account_ibfk_1"
  add_foreign_key "Account", "Status", column: "status_id", name: "Account_ibfk_2"
end
