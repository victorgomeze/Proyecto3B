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

ActiveRecord::Schema.define(version: 20170718221804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", primary_key: "codigo", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "existencia"
    t.boolean  "status",       default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "categoria_id"
    t.index ["categoria_id"], name: "index_articulos_on_categoria_id", using: :btree
  end

  create_table "articuloss", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "stockmin"
    t.integer  "stockact"
    t.integer  "precio_com"
    t.integer  "precio_ven"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "boleta_ventas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "monto"
    t.integer  "tipo_pago"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compra", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "total"
    t.integer  "vendedor"
    t.integer  "det_compra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "titular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "det_compra", force: :cascade do |t|
    t.integer  "articulo"
    t.integer  "cantidad"
    t.integer  "compra"
    t.integer  "vendedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "det_ventas", force: :cascade do |t|
    t.integer  "articulo"
    t.integer  "cantidad"
    t.integer  "venta"
    t.integer  "vendedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enviarpedidos", force: :cascade do |t|
    t.integer  "solicitado"
    t.integer  "surtido"
    t.integer  "pedido_id"
    t.integer  "articulo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "stockmin"
    t.integer  "stockact"
    t.integer  "preciocom"
    t.integer  "precioven"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer  "codigo"
    t.integer  "departamento_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["departamento_id"], name: "index_pedidos_on_departamento_id", using: :btree
    t.index ["user_id"], name: "index_pedidos_on_user_id", using: :btree
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

  create_table "purchase_details", force: :cascade do |t|
    t.integer  "articulo"
    t.integer  "cantidad"
    t.integer  "compra"
    t.integer  "vendedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "total"
    t.integer  "vendedor"
    t.integer  "det_compra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_details", force: :cascade do |t|
    t.integer  "articulo"
    t.integer  "cantidad"
    t.integer  "compra"
    t.integer  "vendedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "total"
    t.integer  "vendedor"
    t.integer  "det_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.integer  "telefono"
    t.integer  "password"
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
    t.string   "nombre"
    t.string   "permisos"
    t.integer  "telefono"
    t.string   "rut"
    t.boolean  "admin"
    t.boolean  "vendedor"
    t.boolean  "user_role"
    t.string   "usuario"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vendedor", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "total"
    t.integer  "vendedor"
    t.integer  "det_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta_det", force: :cascade do |t|
    t.integer "producto"
    t.integer "cantidad"
    t.integer "venta"
    t.integer "vendedor"
  end

  create_table "ventas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "total"
    t.integer  "vendedor"
    t.integer  "venta_det"
  end

  add_foreign_key "compra", "det_compra", column: "det_compra"
  add_foreign_key "det_compra", "articuloss", column: "articulo"
  add_foreign_key "det_compra", "vendedor", column: "vendedor"
  add_foreign_key "det_ventas", "articuloss", column: "articulo"
  add_foreign_key "det_ventas", "vendedor", column: "vendedor"
  add_foreign_key "venta", "det_ventas", column: "det_venta"
end
