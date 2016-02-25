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

ActiveRecord::Schema.define(version: 20160223140853) do

  create_table "basico_estados", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.string   "codigo",     limit: 4
    t.integer  "pais_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "basico_estados", ["pais_id"], name: "index_basico_estados_on_pais_id"

  create_table "basico_marca_vehiculos", force: :cascade do |t|
    t.string   "nombre",     limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "basico_marcas", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "basico_modelo_vehiculos", force: :cascade do |t|
    t.string   "nombre",           limit: 50
    t.integer  "marcaVehiculo_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "basico_modelo_vehiculos", ["marcaVehiculo_id"], name: "index_basico_modelo_vehiculos_on_marcaVehiculo_id"

  create_table "basico_modelos", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.integer  "marca_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "basico_modelos", ["marca_id"], name: "index_basico_modelos_on_marca_id"

  create_table "basico_municipios", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.integer  "estado_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "basico_municipios", ["estado_id"], name: "index_basico_municipios_on_estado_id"

  create_table "basico_operadoras", force: :cascade do |t|
    t.string   "nombre",     limit: 35
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "basico_paises", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.string   "codigo",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "basico_parroquias", force: :cascade do |t|
    t.string   "nombre",       limit: 30
    t.integer  "municipio_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "basico_parroquias", ["municipio_id"], name: "index_basico_parroquias_on_municipio_id"

  create_table "basico_persona_juridicas", force: :cascade do |t|
    t.string   "descripcion", limit: 30
    t.string   "tipo",        limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "basico_planes", force: :cascade do |t|
    t.string   "nombre",     limit: 35
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "basico_tipo_vehiculos", force: :cascade do |t|
    t.string   "nombre",     limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "registro_cliente_servicio_detalles", force: :cascade do |t|
    t.integer  "servicio_id"
    t.date     "fecha"
    t.string   "estado",      limit: 5
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "registro_cliente_servicio_detalles", ["servicio_id"], name: "index_registro_cliente_servicio_detalles_on_servicio_id"

  create_table "registro_cliente_servicios", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "servicio_id"
    t.integer  "dispositivo_id"
    t.boolean  "pagaPlan"
    t.integer  "fechaInicio_id"
    t.string   "estado",         limit: 5
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "registro_cliente_servicios", ["cliente_id"], name: "index_registro_cliente_servicios_on_cliente_id"
  add_index "registro_cliente_servicios", ["dispositivo_id"], name: "index_registro_cliente_servicios_on_dispositivo_id"
  add_index "registro_cliente_servicios", ["fechaInicio_id"], name: "index_registro_cliente_servicios_on_fechaInicio_id"
  add_index "registro_cliente_servicios", ["servicio_id"], name: "index_registro_cliente_servicios_on_servicio_id"

  create_table "registro_clientes", force: :cascade do |t|
    t.integer  "tipoIdentidad_id"
    t.string   "identidad",        limit: 16
    t.string   "nombres",          limit: 180
    t.string   "direccion",        limit: 400
    t.integer  "parroquia_id"
    t.string   "email",            limit: 35
    t.string   "ping",             limit: 20
    t.string   "web",              limit: 200
    t.string   "twitter",          limit: 70
    t.string   "telefono",         limit: 15
    t.string   "otroTelefono",     limit: 15
    t.string   "celular",          limit: 15
    t.string   "otroCelular",      limit: 15
    t.string   "otroEmail",        limit: 35
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "registro_clientes", ["parroquia_id"], name: "index_registro_clientes_on_parroquia_id"
  add_index "registro_clientes", ["tipoIdentidad_id"], name: "index_registro_clientes_on_tipoIdentidad_id"

  create_table "registro_dispositivos", force: :cascade do |t|
    t.string   "tipo",       limit: 25
    t.integer  "modelo_id"
    t.string   "serial",     limit: 100
    t.string   "email",      limit: 35
    t.integer  "linea_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "registro_dispositivos", ["linea_id"], name: "index_registro_dispositivos_on_linea_id"
  add_index "registro_dispositivos", ["modelo_id"], name: "index_registro_dispositivos_on_modelo_id"

  create_table "registro_lineas", force: :cascade do |t|
    t.integer  "operadora_id"
    t.string   "serial",       limit: 50
    t.string   "codigoPin",    limit: 50
    t.string   "codigoPunk",   limit: 50
    t.string   "numero",       limit: 25
    t.integer  "plan_id"
    t.integer  "diaCorte"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "registro_lineas", ["operadora_id"], name: "index_registro_lineas_on_operadora_id"
  add_index "registro_lineas", ["plan_id"], name: "index_registro_lineas_on_plan_id"

  create_table "registro_servicios", force: :cascade do |t|
    t.string   "nombre",      limit: 35
    t.string   "descripcion", limit: 250
    t.float    "valor"
    t.integer  "impuesto"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "registro_vehiculos", force: :cascade do |t|
    t.integer  "tipo_id"
    t.integer  "modelo_id"
    t.string   "ano",              limit: 5
    t.string   "color",            limit: 25
    t.string   "placa",            limit: 20
    t.string   "serialCarroceria", limit: 35
    t.string   "serialMotor",      limit: 35
    t.integer  "cliente_id"
    t.string   "encargado",        limit: 100
    t.integer  "dispositivo_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "registro_vehiculos", ["cliente_id"], name: "index_registro_vehiculos_on_cliente_id"
  add_index "registro_vehiculos", ["dispositivo_id"], name: "index_registro_vehiculos_on_dispositivo_id"
  add_index "registro_vehiculos", ["modelo_id"], name: "index_registro_vehiculos_on_modelo_id"
  add_index "registro_vehiculos", ["tipo_id"], name: "index_registro_vehiculos_on_tipo_id"

end
