class Dsei < ActiveRecord::Base
  auditable
  attr_accessor :villages, :cities

  has_one :pdsi
  has_many :base_polos
  has_many :casais
  has_many :users
  has_many :people
  has_many :false_results
  has_many :specific_results
  has_many :results, through: :specific_results
  has_many :strategic_indicators_dimensions

  accepts_nested_attributes_for :results, reject_if: :all_blank, allow_destroy: true

  validates :name, length: { maximum: 255 }, presence: true, uniqueness: true
  validates :sesai_id, numericality: true, uniqueness: true

  def base_polos_with_emsis
    base_polos.includes(:emsis)
  end

  def base_polos_with_physiographic_data(_include_polo_base = true)
    base_polos.includes(villages:
      [physiographic_data: [:physiographic_data_languages,
                            :physiographic_data_ethnicities]])
  end

  def base_polos_with_service_networks
    base_polos.includes(
      service_networks: [service_network_cities: [:health_establishments, :health_specializeds]])
  end

  def villages
    return @villages unless @villages.nil?
    @villages = {}

    Dsei.eager_load(base_polos: [:villages]).where(id: id).first.base_polos.each do |base_polo|
      @villages[base_polo.id] = { name: base_polo.name, villages: {} }
      base_polo.villages.each do |village|
        @villages[base_polo.id][:villages][village.id] = "#{village.name}, em #{village.city_name}"
      end
    end

    @villages
  end

  def cities
    return @cities unless @cities.nil?
    @cities = []
    BasePolo.where(dsei_id: id)
      .order('city_name').each { |city| @cities <<  city.city_name }

    @cities.uniq
  end

  def pdsi
    return @pdsi unless @pdsi.nil?

    @pdsi = Pdsi.where(dsei: self).first_or_create

    @pdsi
  end

  def specific_pdsi_results
    PdsiResult.where(pdsi: pdsi, result_id: results.map(&:id))
  end
end
