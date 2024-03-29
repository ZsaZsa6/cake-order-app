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

ActiveRecord::Schema.define(version: 2021_10_09_191233) do

  create_table "cupcakes", force: :cascade do |t|
    t.string "flavor"
    t.string "frosting"
    t.string "filling"
    t.string "sprinkles"
    t.integer "product_id"
    t.integer "quantity", default: 1
  end

  create_table "customers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "donuts", force: :cascade do |t|
    t.string "flavor"
    t.string "frosting"
    t.string "filling"
    t.string "sprinkles"
    t.integer "product_id"
    t.integer "quantity", default: 1
  end

  create_table "orders", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "type"
  end

  create_table "tiers", force: :cascade do |t|
    t.string "flavor"
    t.string "frosting"
    t.string "filling"
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "shape"
    t.text "instructions"
  end

end
