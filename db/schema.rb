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

ActiveRecord::Schema.define(version: 20150627171543) do

  create_table "clinicas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "plan"
    t.string   "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinicas", ["plan"], name: "index_clinicas_on_plan"

  create_table "contactos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.string   "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmacia", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "ubicacion"
    t.string   "plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seguros_saluds", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.string   "dependientes"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.string   "plan"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "seguros_vehiculos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.string   "marca"
    t.string   "model"
    t.string   "compania"
    t.string   "año"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
