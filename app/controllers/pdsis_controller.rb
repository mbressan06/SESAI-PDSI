class PdsisController < ApplicationController
  before_action :set_pdsi#, only: [:index, :show, :edit, :update]
  before_action :set_section, only: [:index, :edit, :update, :health_indicators]
  before_action :set_base_polo, only: [:edit, :health_indicators, :update]
  before_action :set_subsection,  only: [:edit, :health_indicators, :update]

  # GET /pdsis
  def index
  end

  # GET /pdsis/1
  def show
  end

  def edit
  end

  def health_indicators
    if @subsection == 'casai'
      casai_id = params[:casai] || @dsei.casais.order(:id).first.id
      @casai = Casai.find casai_id
    end

    render :edit
  end

  def update
    if @pdsi.update(pdsi_params)
      redirect_after_save
    else
      render :edit
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_pdsi
    @pdsi             = current_user.pdsi
    @demographic_data = @pdsi.demographic_data
    @dsei             = current_user.dsei
  end

  def set_section
    section = params[:section] || 'introducao'
    @section_url  = section.gsub(/_/, '-')
    @section      = section.gsub(/-/, '_')
  end

  def set_subsection
    @subsection = params[:subsection].gsub(/-/, '_') if params.key?(:subsection)
  end

  def set_base_polo
    # helper allowed_sections
    if view_context.allowed_sections.include? params[:section]
      id = params[:base_polo] || @dsei.base_polos.order(:id).first.id
      @base_polo = BasePolo.find id
    end
  end

  def redirect_after_save
    return redirect_to_indicadores if params[:section] == 'indicadores-saude-indigena'

    notice = {notice: 'Dados atualizados com sucesso.'}

    args = { section: params[:section] }
    args.merge!(base_polo: params[:base_polo]) if params[:base_polo]

    redirect_to edit_pdsi_path(@pdsi, args), notice
  end

  def redirect_to_indicadores
    notice = {notice: 'Indicadores atualizados com sucesso.'}

    args = { subsection: params[:subsection] }
    args.merge!(base_polo: params[:base_polo]) if params[:base_polo]
    args.merge!(casai: params[:casai]) if params[:casai]

    redirect_to health_indicators_path(@pdsi, args), notice
  end

  # Only allow a trusted parameter "white list" through.
  def pdsi_params
    params.require(:pdsi).permit(
      :user_id, :processo_construcao_pdsi_2, :caracterizacao_do_dsei_3, :map, :analise_situacional_4, :principais_desafios_4_2,

      pdsi_base_polo_data_attributes: [:id, :base_polo_id, :city_name],
      physiographic_datas_attributes: [
        :id, :vilage_id, :pt_fluency, :m_1, :m_1_4, :m_5_9, :m_10_49, :m_50_59, :m_60, :w_1, :w_1_4, :w_5_9, :w_10_49, :w_50_59, :w_60,
        physiographic_data_languages_attributes: [:id, :physiographic_data_id, :language, :_destroy]
      ],
      emsis_attributes: [:id, :name, :base_polo_id, :pdsi_id, :numero_medicos, :numero_enfermeiros, :numero_odontologistas, :numero_tecnicos_enfermagem, :asb, :ais, :aisan, :aldeias_atendidas, :permanencia_medicos, :permanencia_enfermeiros, :permanencia_odontologistas, :permanencia_tecnicos_enfermagem, :_destroy],
      service_networks_attributes: [
        :id, :base_polo_id, :pdsi_id, :city_name,
        health_establishments_attributes:  [:id, :service_network_id, :name, :_destroy],
        health_specializeds_attributes:    [:id, :service_network_id, :name, :_destroy]
      ],
      infrastructure_buildings_attributes: [
        :id, :infrastructure_building_type_id, :name, :uf, :city_name, :village_id, :cnes, :building_status, :ground_status, :_destroy
      ],
      infrastructure_sanitations_attributes: [
        :id, :village_id, :abastecimento_agua, :abastecimento_agua_alternativo, :saa_completo, :nome_saa, :tipo_captacao_agua, :nome_concessionaria, :tipo_tratamento_agua, :abastecimento_mqa, :saa_manutencao, :qtd_msd_individual, :qtd_msd_coletiva, :esgotamento_sanitario
      ],
      capais_attributes: [
        :id, :pdsi_id, :city_name, :uf, :capai_type, :host_capacity, :_destroy,
        capai_villages_attributes: [:id, :capai_id, :village_id, :_destroy],
      ],
      destinations_attributes: [:id, :pdsi_id, :origin_village_id, :destination_village_id, :destination_type_id, :boat_time, :road_time, :fly_time, :_destroy],
      pdsi_human_resources_attributes: [:id, :human_resource_function_id, :ubsi_atual, :polo_base_tipo_1_atual, :polo_base_tipo_2, :casai_atual, :sead_atual, :selog_atual, :sesane_atual, :seofi_atual, :sgep_atual, :gabinete_atual, :diasi_atual, :sesai_dsei, :municipio, :estado, :convenio, :mais_medicos, :terceirizacao, :ubsi_necessaria, :polo_base_tipo_1_necessaria, :polo_base_tipo_2_necessaria, :casai_necessaria, :sead_necessaria, :selog_necessaria, :sesane_necessaria, :seofi_necessaria, :sgep_necessaria, :gabinete_necessaria, :diasi_necessaria],
      absolute_data_base_polos_attributes: [:id, :absolute_datum_id, :base_polo_id, :pdsi_id, :value],
      absolute_data_dseis_attributes: [:id, :absolute_datum_id, :dsei_id, :pdsi_id, :value],
      absolute_data_casais_attributes: [:id, :absolute_datum_id, :dsei_id, :pdsi_id, :value]
    )
  end
end
