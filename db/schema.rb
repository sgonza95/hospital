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

ActiveRecord::Schema.define(version: 20151111233828) do

  create_table "especialidads", force: :cascade do |t|
    t.string   "nombreespe"
    t.string   "sala"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medico_pacientes", force: :cascade do |t|
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "medico_pacientes", ["medico_id"], name: "index_medico_pacientes_on_medico_id"
  add_index "medico_pacientes", ["paciente_id"], name: "index_medico_pacientes_on_paciente_id"

  create_table "medicos", force: :cascade do |t|
    t.string   "nombremedico"
    t.string   "apemedico"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "especialidad_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nombrepaciente"
    t.string   "apepaciente"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "usuarios", force: :cascade do |t|
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
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
