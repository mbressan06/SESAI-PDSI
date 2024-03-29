class Destination < ActiveRecord::Base
  auditable

  belongs_to :pdsi
  belongs_to :destination_type
  belongs_to :origin_village,      class_name: 'Village', foreign_key: :origin_village_id, required: true
  belongs_to :destination_village, class_name: 'Village', foreign_key: :destination_village_id

  validates :pdsi,
            :origin_village,
            :boat_time,
            :road_time,
            :fly_time,
            :destination_type,
            presence: true

  def use_boat?
    !boat_time.blank?
  end

  def use_road?
    !road_time.blank?
  end

  def use_fly?
    !fly_time.blank?
  end

  def class_to_name
    destination_class == 'aldeia' ? 'Aldeia' : 'Município'
  end
end
