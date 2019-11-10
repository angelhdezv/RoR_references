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

ActiveRecord::Schema.define(version: 2019_11_10_225351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duenios", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascota", force: :cascade do |t|
    t.string "nombre"
    t.bigint "doctor_id"
    t.bigint "duenio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_mascota_on_doctor_id"
    t.index ["duenio_id"], name: "index_mascota_on_duenio_id"
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "Nombre"
    t.string "laboratorio"
    t.string "gramaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receta", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "mascota_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_receta_on_doctor_id"
    t.index ["mascota_id"], name: "index_receta_on_mascota_id"
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "receta_id"
    t.bigint "medicamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicamento_id"], name: "index_tratamientos_on_medicamento_id"
    t.index ["receta_id"], name: "index_tratamientos_on_receta_id"
  end

  add_foreign_key "mascota", "doctors"
  add_foreign_key "mascota", "duenios"
  add_foreign_key "receta", "doctors"
  add_foreign_key "receta", "mascota", column: "mascota_id"
  add_foreign_key "tratamientos", "medicamentos"
  add_foreign_key "tratamientos", "receta", column: "receta_id"
end
