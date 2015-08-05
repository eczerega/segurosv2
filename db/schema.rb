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

ActiveRecord::Schema.define(version: 20150804153746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compania_seguros", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rut"
    t.string   "dv"
    t.string   "banco"
    t.string   "cuenta_bancaria"
    t.string   "aux1"
    t.string   "aux2"
    t.string   "aux3"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "empresas_grandes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "representante_legal_rut"
    t.integer  "dv"
    t.string   "aux1"
    t.string   "aux2"
    t.string   "aux3"
    t.string   "image"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "informacion_productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "prima"
    t.integer  "valor_asegurado"
    t.integer  "duracion_meses"
    t.integer  "aseguradora_responsable_id"
    t.string   "aux1"
    t.string   "aux2"
    t.string   "aux3"
    t.string   "image"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "producto_inmuebles", force: :cascade do |t|
    t.string   "producto"
    t.string   "tipo_vivienda"
    t.string   "construccion"
    t.string   "region"
    t.string   "ciudad"
    t.string   "comuna"
    t.string   "calle"
    t.integer  "numero"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.string   "digito_verificador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "producto_personas", force: :cascade do |t|
    t.string   "producto"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "producto_tecnologia", force: :cascade do |t|
    t.string   "producto"
    t.string   "tipo_producto"
    t.string   "marca"
    t.integer  "anho"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "producto_vehiculos", force: :cascade do |t|
    t.string   "producto"
    t.string   "marca"
    t.string   "modelos"
    t.integer  "anho"
    t.string   "motor"
    t.string   "patente"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "puntos_venta", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ciudad"
    t.string   "comuna"
    t.string   "rut"
    t.integer  "dv"
    t.string   "calle"
    t.integer  "empresa_id"
    t.string   "aux1"
    t.string   "aux2"
    t.string   "aux3"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "rut"
    t.integer  "dv"
    t.string   "email"
    t.string   "telefono_fijo"
    t.string   "telefono_celular"
    t.string   "password_digest"
    t.string   "image"
    t.integer  "tipo"
    t.integer  "estado"
    t.integer  "punto_venta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "venta", force: :cascade do |t|
    t.string   "tipo_producto"
    t.integer  "monto"
    t.integer  "vendedor_id"
    t.integer  "punto_de_venta_id"
    t.string   "aux1"
    t.string   "aux2"
    t.string   "aux3"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "activation_token"
    t.boolean  "active"
    t.string   "token"
    t.integer  "pid"
  end

end
