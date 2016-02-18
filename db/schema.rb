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

ActiveRecord::Schema.define(version: 20160218211854) do

  create_table "basico_estados", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.string   "codigo",     limit: 4
    t.integer  "pais_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "basico_estados", ["pais_id"], name: "index_basico_estados_on_pais_id"

  create_table "basico_municipios", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.integer  "estado_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "basico_municipios", ["estado_id"], name: "index_basico_municipios_on_estado_id"

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

  create_table "registro_clientes", force: :cascade do |t|
    t.integer  "personaJuridica_id"
    t.string   "identidad",          limit: 10
    t.string   "nombres",            limit: 60
    t.string   "apellidos",          limit: 60
    t.string   "direccion",          limit: 450
    t.integer  "parroquia_id"
    t.string   "email",              limit: 50
    t.string   "pin",                limit: 20
    t.string   "web",                limit: 300
    t.string   "tiwtter",            limit: 50
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "registro_clientes", ["parroquia_id"], name: "index_registro_clientes_on_parroquia_id"
  add_index "registro_clientes", ["personaJuridica_id"], name: "index_registro_clientes_on_personaJuridica_id"

end
