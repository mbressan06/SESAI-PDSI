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

ActiveRecord::Schema.define(version: 20150925184330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "absolute_data", force: :cascade do |t|
    t.integer  "absolute_datum_level_id"
    t.string   "name"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "is_specific",             default: false
  end

  add_index "absolute_data", ["absolute_datum_level_id"], name: "index_absolute_data_on_absolute_datum_level_id", using: :btree

  create_table "absolute_data_base_polos", force: :cascade do |t|
    t.integer  "absolute_datum_id"
    t.integer  "base_polo_id"
    t.integer  "pdsi_id"
    t.integer  "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "absolute_data_base_polos", ["absolute_datum_id"], name: "index_absolute_data_base_polos_on_absolute_datum_id", using: :btree
  add_index "absolute_data_base_polos", ["base_polo_id"], name: "index_absolute_data_base_polos_on_base_polo_id", using: :btree
  add_index "absolute_data_base_polos", ["pdsi_id"], name: "index_absolute_data_base_polos_on_pdsi_id", using: :btree

  create_table "absolute_data_casais", force: :cascade do |t|
    t.integer  "absolute_datum_id"
    t.integer  "casai_id"
    t.integer  "pdsi_id"
    t.integer  "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "absolute_data_casais", ["absolute_datum_id"], name: "index_absolute_data_casais_on_absolute_datum_id", using: :btree
  add_index "absolute_data_casais", ["casai_id"], name: "index_absolute_data_casais_on_casai_id", using: :btree
  add_index "absolute_data_casais", ["pdsi_id"], name: "index_absolute_data_casais_on_pdsi_id", using: :btree

  create_table "absolute_data_dseis", force: :cascade do |t|
    t.integer  "absolute_datum_id"
    t.integer  "dsei_id"
    t.integer  "pdsi_id"
    t.integer  "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "absolute_data_dseis", ["absolute_datum_id"], name: "index_absolute_data_dseis_on_absolute_datum_id", using: :btree
  add_index "absolute_data_dseis", ["dsei_id"], name: "index_absolute_data_dseis_on_dsei_id", using: :btree
  add_index "absolute_data_dseis", ["pdsi_id"], name: "index_absolute_data_dseis_on_pdsi_id", using: :btree

  create_table "absolute_datum_levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_polos", force: :cascade do |t|
    t.integer  "dsei_id"
    t.string   "name",       null: false
    t.integer  "sesai_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "base_polos", ["dsei_id"], name: "index_base_polos_on_dsei_id", using: :btree

  create_table "capai_villages", force: :cascade do |t|
    t.integer  "capai_id"
    t.integer  "village_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "capai_villages", ["capai_id"], name: "index_capai_villages_on_capai_id", using: :btree
  add_index "capai_villages", ["village_id"], name: "index_capai_villages_on_village_id", using: :btree

  create_table "capais", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.string   "city_name"
    t.string   "uf"
    t.string   "capai_type"
    t.integer  "host_capacity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "capais", ["pdsi_id"], name: "index_capais_on_pdsi_id", using: :btree

  create_table "casais", force: :cascade do |t|
    t.integer  "dsei_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "casais", ["dsei_id"], name: "index_casais_on_dsei_id", using: :btree

  create_table "cost_users", force: :cascade do |t|
    t.integer  "cost_id"
    t.integer  "user_id"
    t.decimal  "value_2015",   precision: 8, scale: 2
    t.decimal  "value_2016",   precision: 8, scale: 2
    t.text     "reason"
    t.text     "criteria"
    t.text     "distribution"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "cost_users", ["cost_id"], name: "index_cost_users_on_cost_id", using: :btree
  add_index "cost_users", ["user_id"], name: "index_cost_users_on_user_id", using: :btree

  create_table "costs", force: :cascade do |t|
    t.string   "name",                            null: false
    t.boolean  "ask_distribution", default: true
    t.string   "data_type",                       null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "demographic_datas", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.string   "extensao_territorial"
    t.string   "municipio_sede"
    t.string   "endereco"
    t.string   "email"
    t.integer  "numero_municipios"
    t.integer  "populacao_indigena"
    t.text     "etnias"
    t.integer  "numero_polos_base"
    t.integer  "numero_ubsi"
    t.integer  "numero_regioes_de_saude"
    t.integer  "numero_casais"
    t.integer  "numero_aldeias"
    t.integer  "numero_familias"
    t.text     "meios_de_transporte"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "demographic_datas", ["pdsi_id"], name: "index_demographic_datas_on_pdsi_id", using: :btree

  create_table "destination_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "origin_village_id",      null: false
    t.integer  "destination_village_id", null: false
    t.integer  "destination_type_id"
    t.string   "boat_time"
    t.string   "road_time"
    t.string   "fly_time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "destinations", ["destination_type_id"], name: "index_destinations_on_destination_type_id", using: :btree
  add_index "destinations", ["pdsi_id"], name: "index_destinations_on_pdsi_id", using: :btree

  create_table "dseis", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "sesai_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emsis", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "base_polo_id"
    t.string   "name",                            null: false
    t.integer  "numero_medicos"
    t.integer  "numero_enfermeiros"
    t.integer  "numero_odontologistas"
    t.integer  "numero_tecnicos_enfermagem"
    t.integer  "asb"
    t.integer  "ais"
    t.integer  "aisan"
    t.integer  "aldeias_atendidas"
    t.integer  "permanencia_medicos"
    t.integer  "permanencia_enfermeiros"
    t.integer  "permanencia_odontologistas"
    t.integer  "permanencia_tecnicos_enfermagem"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "emsis", ["base_polo_id"], name: "index_emsis_on_base_polo_id", using: :btree
  add_index "emsis", ["pdsi_id"], name: "index_emsis_on_pdsi_id", using: :btree

  create_table "espinita_audits", force: :cascade do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.text     "audited_changes"
    t.string   "comment"
    t.integer  "version"
    t.string   "action"
    t.string   "remote_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "espinita_audits", ["auditable_type", "auditable_id"], name: "index_espinita_audits_on_auditable_type_and_auditable_id", using: :btree
  add_index "espinita_audits", ["user_type", "user_id"], name: "index_espinita_audits_on_user_type_and_user_id", using: :btree

  create_table "ethnicities", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "sesai_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ethnicities_villages", force: :cascade do |t|
    t.integer "ethnicity_id"
    t.integer "village_id"
  end

  add_index "ethnicities_villages", ["ethnicity_id"], name: "index_ethnicities_villages_on_ethnicity_id", using: :btree
  add_index "ethnicities_villages", ["village_id"], name: "index_ethnicities_villages_on_village_id", using: :btree

  create_table "etnias", force: :cascade do |t|
    t.integer  "demographic_data_id"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "etnias", ["demographic_data_id", "name"], name: "index_etnias_on_demographic_data_id_and_name", unique: true, using: :btree
  add_index "etnias", ["demographic_data_id"], name: "index_etnias_on_demographic_data_id", using: :btree

  create_table "health_establishments", force: :cascade do |t|
    t.integer  "service_network_id"
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "health_establishments", ["service_network_id"], name: "index_health_establishments_on_service_network_id", using: :btree

  create_table "health_specializeds", force: :cascade do |t|
    t.integer  "service_network_id"
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "health_specializeds", ["service_network_id"], name: "index_health_specializeds_on_service_network_id", using: :btree

  create_table "human_resource_functions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infrastructure_building_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infrastructure_buildings", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "infrastructure_building_type_id"
    t.string   "name"
    t.string   "uf"
    t.string   "city_name"
    t.integer  "village_id"
    t.string   "cnes"
    t.string   "building_status"
    t.string   "ground_status"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "infrastructure_buildings", ["infrastructure_building_type_id"], name: "idx_ibt_on_ibt_id", using: :btree
  add_index "infrastructure_buildings", ["pdsi_id"], name: "index_infrastructure_buildings_on_pdsi_id", using: :btree
  add_index "infrastructure_buildings", ["village_id"], name: "index_infrastructure_buildings_on_village_id", using: :btree

  create_table "infrastructure_sanitations", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "village_id"
    t.boolean  "abastecimento_agua"
    t.boolean  "abastecimento_agua_alternativo"
    t.boolean  "saa_completo"
    t.string   "nome_saa"
    t.string   "tipo_captacao_agua"
    t.string   "nome_concessionaria"
    t.string   "tipo_tratamento_agua"
    t.boolean  "abastecimento_mqa"
    t.boolean  "saa_manutencao"
    t.integer  "qtd_msd_individual"
    t.integer  "qtd_msd_coletiva"
    t.boolean  "esgotamento_sanitario"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "infrastructure_sanitations", ["pdsi_id"], name: "index_infrastructure_sanitations_on_pdsi_id", using: :btree
  add_index "infrastructure_sanitations", ["village_id"], name: "index_infrastructure_sanitations_on_village_id", using: :btree

  create_table "pdsi_base_polo_data", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "base_polo_id"
    t.string   "city_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pdsi_base_polo_data", ["base_polo_id"], name: "index_pdsi_base_polo_data_on_base_polo_id", using: :btree
  add_index "pdsi_base_polo_data", ["pdsi_id"], name: "index_pdsi_base_polo_data_on_pdsi_id", using: :btree

  create_table "pdsi_human_resources", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "human_resource_function_id"
    t.integer  "ubsi_atual"
    t.integer  "polo_base_tipo_1_atual"
    t.integer  "polo_base_tipo_2"
    t.integer  "casai_atual"
    t.integer  "sead_atual"
    t.integer  "selog_atual"
    t.integer  "sesane_atual"
    t.integer  "seofi_atual"
    t.integer  "sgep_atual"
    t.integer  "gabinete_atual"
    t.integer  "diasi_atual"
    t.integer  "sesai_dsei"
    t.integer  "municipio"
    t.integer  "estado"
    t.integer  "convenio"
    t.integer  "mais_medicos"
    t.integer  "terceirizacao"
    t.integer  "ubsi_necessaria"
    t.integer  "polo_base_tipo_1_necessaria"
    t.integer  "polo_base_tipo_2_necessaria"
    t.integer  "casai_necessaria"
    t.integer  "sead_necessaria"
    t.integer  "selog_necessaria"
    t.integer  "sesane_necessaria"
    t.integer  "seofi_necessaria"
    t.integer  "sgep_necessaria"
    t.integer  "gabinete_necessaria"
    t.integer  "diasi_necessaria"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "pdsi_human_resources", ["human_resource_function_id"], name: "index_pdsi_human_resources_on_human_resource_function_id", using: :btree
  add_index "pdsi_human_resources", ["pdsi_id"], name: "index_pdsi_human_resources_on_pdsi_id", using: :btree

  create_table "pdsi_results", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "result_id"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pdsi_results", ["pdsi_id"], name: "index_pdsi_results_on_pdsi_id", using: :btree
  add_index "pdsi_results", ["result_id"], name: "index_pdsi_results_on_result_id", using: :btree

  create_table "pdsis", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "processo_construcao_pdsi_2"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "caracterizacao_do_dsei_3"
    t.string   "map_file_name"
    t.string   "map_content_type"
    t.integer  "map_file_size"
    t.datetime "map_updated_at"
    t.text     "analise_situacional_4"
    t.text     "principais_desafios_4_2"
  end

  add_index "pdsis", ["user_id"], name: "index_pdsis_on_user_id", using: :btree

  create_table "physiographic_data_languages", force: :cascade do |t|
    t.integer  "physiographic_data_id"
    t.string   "language"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "physiographic_data_languages", ["physiographic_data_id"], name: "index_physiographic_data_languages_on_physiographic_data_id", using: :btree

  create_table "physiographic_datas", force: :cascade do |t|
    t.integer  "pdsi_id"
    t.integer  "village_id"
    t.string   "pt_fluency"
    t.integer  "m_1"
    t.integer  "m_1_4"
    t.integer  "m_5_9"
    t.integer  "m_10_49"
    t.integer  "m_50_59"
    t.integer  "m_60"
    t.integer  "w_1"
    t.integer  "w_1_4"
    t.integer  "w_5_9"
    t.integer  "w_10_49"
    t.integer  "w_50_59"
    t.integer  "w_60"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "physiographic_datas", ["pdsi_id"], name: "index_physiographic_datas_on_pdsi_id", using: :btree
  add_index "physiographic_datas", ["village_id"], name: "index_physiographic_datas_on_village_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "result_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "parent_id"
  end

  create_table "result_levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "result_level_id"
    t.integer  "result_category_id"
    t.string   "name"
    t.integer  "reference_value"
    t.integer  "parent_id"
    t.boolean  "is_specific"
    t.boolean  "is_percentage"
    t.text     "result_text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "results", ["result_category_id"], name: "index_results_on_result_category_id", using: :btree
  add_index "results", ["result_level_id"], name: "index_results_on_result_level_id", using: :btree

  create_table "service_networks", force: :cascade do |t|
    t.integer  "base_polo_id"
    t.integer  "pdsi_id"
    t.string   "city_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "service_networks", ["base_polo_id"], name: "index_service_networks_on_base_polo_id", using: :btree
  add_index "service_networks", ["pdsi_id"], name: "index_service_networks_on_pdsi_id", using: :btree

  create_table "specific_absolute_data", force: :cascade do |t|
    t.integer  "absolute_datum_id"
    t.integer  "dsei_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "specific_absolute_data", ["absolute_datum_id"], name: "index_specific_absolute_data_on_absolute_datum_id", using: :btree
  add_index "specific_absolute_data", ["dsei_id"], name: "index_specific_absolute_data_on_dsei_id", using: :btree

  create_table "specific_results", force: :cascade do |t|
    t.integer  "result_id"
    t.integer  "dsei_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "specific_results", ["dsei_id"], name: "index_specific_results_on_dsei_id", using: :btree
  add_index "specific_results", ["result_id"], name: "index_specific_results_on_result_id", using: :btree

  create_table "text_templates", force: :cascade do |t|
    t.text     "introducao_1"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "processo_construcao_pdsi_2"
    t.text     "analise_situacional_4"
  end

  create_table "transportations", force: :cascade do |t|
    t.integer  "demographic_data_id"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "transportations", ["demographic_data_id", "name"], name: "index_transportations_on_demographic_data_id_and_name", unique: true, using: :btree
  add_index "transportations", ["demographic_data_id"], name: "index_transportations_on_demographic_data_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",           default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_type_id"
    t.boolean  "active"
    t.integer  "dsei_id"
  end

  add_index "users", ["dsei_id"], name: "index_users_on_dsei_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "villages", force: :cascade do |t|
    t.integer  "base_polo_id"
    t.string   "name",          null: false
    t.integer  "sesai_id",      null: false
    t.string   "city_name",     null: false
    t.integer  "city_sesai_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "villages", ["base_polo_id"], name: "index_villages_on_base_polo_id", using: :btree

  add_foreign_key "absolute_data", "absolute_datum_levels"
  add_foreign_key "absolute_data_base_polos", "absolute_data"
  add_foreign_key "absolute_data_base_polos", "base_polos"
  add_foreign_key "absolute_data_base_polos", "pdsis"
  add_foreign_key "absolute_data_casais", "absolute_data"
  add_foreign_key "absolute_data_casais", "casais"
  add_foreign_key "absolute_data_casais", "pdsis"
  add_foreign_key "absolute_data_dseis", "absolute_data"
  add_foreign_key "absolute_data_dseis", "dseis"
  add_foreign_key "absolute_data_dseis", "pdsis"
  add_foreign_key "base_polos", "dseis"
  add_foreign_key "capai_villages", "capais"
  add_foreign_key "capai_villages", "villages"
  add_foreign_key "capais", "pdsis"
  add_foreign_key "casais", "dseis"
  add_foreign_key "cost_users", "costs"
  add_foreign_key "cost_users", "users"
  add_foreign_key "demographic_datas", "pdsis"
  add_foreign_key "destinations", "destination_types"
  add_foreign_key "destinations", "pdsis"
  add_foreign_key "destinations", "villages", column: "destination_village_id"
  add_foreign_key "destinations", "villages", column: "origin_village_id"
  add_foreign_key "emsis", "base_polos"
  add_foreign_key "emsis", "pdsis"
  add_foreign_key "ethnicities_villages", "ethnicities"
  add_foreign_key "ethnicities_villages", "villages"
  add_foreign_key "etnias", "demographic_datas"
  add_foreign_key "health_establishments", "service_networks"
  add_foreign_key "health_specializeds", "service_networks"
  add_foreign_key "infrastructure_buildings", "infrastructure_building_types"
  add_foreign_key "infrastructure_buildings", "pdsis"
  add_foreign_key "infrastructure_buildings", "villages"
  add_foreign_key "infrastructure_sanitations", "pdsis"
  add_foreign_key "infrastructure_sanitations", "villages"
  add_foreign_key "pdsi_base_polo_data", "base_polos"
  add_foreign_key "pdsi_base_polo_data", "pdsis"
  add_foreign_key "pdsi_human_resources", "human_resource_functions"
  add_foreign_key "pdsi_human_resources", "pdsis"
  add_foreign_key "pdsi_results", "pdsis"
  add_foreign_key "pdsi_results", "results"
  add_foreign_key "pdsis", "users"
  add_foreign_key "physiographic_data_languages", "physiographic_datas"
  add_foreign_key "physiographic_datas", "pdsis"
  add_foreign_key "physiographic_datas", "villages"
  add_foreign_key "profiles", "users"
  add_foreign_key "result_categories", "result_categories", column: "parent_id"
  add_foreign_key "results", "result_categories"
  add_foreign_key "results", "result_levels"
  add_foreign_key "results", "results", column: "parent_id"
  add_foreign_key "service_networks", "base_polos"
  add_foreign_key "service_networks", "pdsis"
  add_foreign_key "specific_absolute_data", "absolute_data"
  add_foreign_key "specific_absolute_data", "dseis"
  add_foreign_key "specific_results", "dseis"
  add_foreign_key "specific_results", "results"
  add_foreign_key "transportations", "demographic_datas"
  add_foreign_key "users", "dseis"
  add_foreign_key "villages", "base_polos"
end
