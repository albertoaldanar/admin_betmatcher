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

ActiveRecord::Schema.define(version: 20180626145338) do

  create_table "gamers", force: :cascade do |t|
    t.string   "username"
    t.integer  "ranking"
    t.integer  "coins"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "local"
    t.string   "visit"
    t.string   "stadium"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "codigo"
    t.integer  "cantidad"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "salida_id"
    t.boolean  "vuelta"
    t.boolean  "cambio"
    t.integer  "change"
    t.integer  "dis"
    t.index ["salida_id"], name: "index_materials_on_salida_id"
  end

  create_table "salidas", force: :cascade do |t|
    t.integer  "folio"
    t.date     "fecha"
    t.string   "nombre"
    t.string   "telefono"
    t.string   "contacto"
    t.string   "email"
    t.string   "solicitud_cliente"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "status"
    t.string   "marca"
    t.string   "modelo"
    t.string   "serie"
    t.string   "capacidad"
    t.text     "lecturas"
    t.boolean  "terminada"
    t.string   "direccion"
    t.boolean  "vuelta"
    t.string   "mecanico"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
