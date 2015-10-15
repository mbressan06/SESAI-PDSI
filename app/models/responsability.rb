class Responsability < ActiveRecord::Base
  auditable

  belongs_to :pdsi
  belongs_to :result
  belongs_to :person
  belongs_to :responsability_level
  belongs_to :parent, class_name: 'Responsability'

  has_many  :corresponsabilities
  accepts_nested_attributes_for :corresponsabilities, reject_if: :all_blank, allow_destroy: true

  has_many  :children,  class_name: 'Responsability', foreign_key: :parent_id
  accepts_nested_attributes_for :children, reject_if: :all_blank, allow_destroy: true
end