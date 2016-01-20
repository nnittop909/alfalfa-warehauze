# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160120045140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bid_collections", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "bid_amount_id"
    t.string   "billing_name"
    t.decimal  "amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "bid_collections", ["project_id"], name: "index_bid_collections_on_project_id", using: :btree

  create_table "bid_expenses", force: :cascade do |t|
    t.integer  "bidding_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bid_expenses", ["bidding_id"], name: "index_bid_expenses_on_bidding_id", using: :btree

  create_table "bidder_amounts", force: :cascade do |t|
    t.integer  "bid_expense_id"
    t.integer  "project_id"
    t.integer  "bidder_id"
    t.string   "amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bidder_amounts", ["project_id"], name: "index_bidder_amounts_on_project_id", using: :btree

  create_table "bidders", force: :cascade do |t|
    t.integer  "bidding_id"
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bidders", ["bidding_id"], name: "index_bidders_on_bidding_id", using: :btree
  add_index "bidders", ["project_id"], name: "index_bidders_on_project_id", using: :btree

  create_table "biddings", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "biddings", ["project_id"], name: "index_biddings_on_project_id", using: :btree

  create_table "billable_materials", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "material_id"
    t.integer  "contractor_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "billable_materials", ["contractor_id"], name: "index_billable_materials_on_contractor_id", using: :btree
  add_index "billable_materials", ["material_id"], name: "index_billable_materials_on_material_id", using: :btree
  add_index "billable_materials", ["project_id"], name: "index_billable_materials_on_project_id", using: :btree

  create_table "cash_sources", force: :cascade do |t|
    t.string   "description"
    t.decimal  "amount"
    t.integer  "petty_cash_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "cash_sources", ["petty_cash_id"], name: "index_cash_sources_on_petty_cash_id", using: :btree

  create_table "contractors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "project_id"
    t.integer "contractor_id"
  end

  add_index "contracts", ["contractor_id"], name: "index_contracts_on_contractor_id", using: :btree
  add_index "contracts", ["project_id"], name: "index_contracts_on_project_id", using: :btree

  create_table "equipment_expenses", force: :cascade do |t|
    t.string   "category"
    t.string   "description"
    t.string   "unit"
    t.integer  "quantity"
    t.decimal  "amount"
    t.integer  "equipment_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "equipment_expenses", ["equipment_id"], name: "index_equipment_expenses_on_equipment_id", using: :btree

  create_table "equipment_schedules", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "equipment_id"
    t.integer  "status"
    t.datetime "starting_date"
    t.datetime "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "equipment_schedules", ["equipment_id"], name: "index_equipment_schedules_on_equipment_id", using: :btree
  add_index "equipment_schedules", ["project_id"], name: "index_equipment_schedules_on_project_id", using: :btree

  create_table "equipments", force: :cascade do |t|
    t.string   "description"
    t.string   "plate_number"
    t.integer  "operator_id"
    t.string   "operator_name"
    t.integer  "project_id"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "equipments", ["project_id"], name: "index_equipments_on_project_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "street"
    t.string   "brangay"
    t.string   "municipality"
    t.string   "province"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "material_expenses", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.string   "description"
    t.string   "unit"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "description"
    t.string   "unit"
    t.decimal  "price"
    t.integer  "quantity"
    t.integer  "status"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operators", force: :cascade do |t|
    t.integer  "equipment_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "operators", ["equipment_id"], name: "index_operators_on_equipment_id", using: :btree

  create_table "particulars", force: :cascade do |t|
    t.integer  "petty_cash_id"
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.string   "recipient"
    t.string   "description"
    t.decimal  "amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "particulars", ["petty_cash_id"], name: "index_particulars_on_petty_cash_id", using: :btree

  create_table "petty_cashes", force: :cascade do |t|
    t.decimal  "cash_on_hand"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "id_number"
    t.string   "name"
    t.integer  "contractor_id"
    t.datetime "start_date"
    t.datetime "target_date"
    t.integer  "location_id"
    t.decimal  "cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  add_index "uploads", ["project_id"], name: "index_uploads_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "bid_collections", "projects"
  add_foreign_key "bid_expenses", "biddings"
  add_foreign_key "bidder_amounts", "projects"
  add_foreign_key "bidders", "biddings"
  add_foreign_key "bidders", "projects"
  add_foreign_key "biddings", "projects"
  add_foreign_key "billable_materials", "contractors"
  add_foreign_key "billable_materials", "materials"
  add_foreign_key "billable_materials", "projects"
  add_foreign_key "cash_sources", "petty_cashes"
  add_foreign_key "equipment_expenses", "equipments"
  add_foreign_key "equipment_schedules", "equipments"
  add_foreign_key "equipment_schedules", "projects"
  add_foreign_key "equipments", "projects"
  add_foreign_key "operators", "equipments"
  add_foreign_key "particulars", "petty_cashes"
  add_foreign_key "uploads", "projects"
end
