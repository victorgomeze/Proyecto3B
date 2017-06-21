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

ActiveRecord::Schema.define(version: 20170621163411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boleta_compras", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "monto"
    t.integer  "tipo_pago"
    t.integer  "cantidad"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "trabajadores_id"
    t.integer  "proveedores_id"
  end

  create_table "boleta_ventas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "monto"
    t.integer  "tipo_pago"
    t.integer  "cantidad"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cliente_id"
    t.integer  "trabajadores_id"
  end

  create_table "carro_compras", force: :cascade do |t|
    t.integer  "cantidad_prod"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "productos_id"
    t.integer  "boleta_compras_id"
  end

  create_table "carro_ventas", force: :cascade do |t|
    t.integer  "cantidad"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "boleta_ventas_id"
    t.integer  "productos_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rut"
    t.string   "correo"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "stock_act"
    t.integer  "stock_min"
    t.integer  "precio_compra"
    t.integer  "precio_venta"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rut"
    t.string   "correo"
    t.integer  "telefono"
    t.string   "empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registros", force: :cascade do |t|
    t.datetime "fecha"
    t.datetime "hora_ingreso"
    t.string   "hora_salida"
    t.string   "datetime"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "trabajadores_id"
  end

  create_table "trabajadores", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rut"
    t.integer  "telefono"
    t.string   "correo"
    t.integer  "tipo_traba"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "boleta_compras", "proveedores", column: "proveedores_id"
  add_foreign_key "boleta_compras", "trabajadores", column: "trabajadores_id"
  add_foreign_key "boleta_ventas", "clientes"
  add_foreign_key "boleta_ventas", "trabajadores", column: "trabajadores_id"
  add_foreign_key "carro_compras", "boleta_compras", column: "boleta_compras_id"
  add_foreign_key "carro_compras", "productos", column: "productos_id"
  add_foreign_key "carro_ventas", "boleta_ventas", column: "boleta_ventas_id"
  add_foreign_key "carro_ventas", "productos", column: "productos_id"
  add_foreign_key "registros", "trabajadores", column: "trabajadores_id"
end
