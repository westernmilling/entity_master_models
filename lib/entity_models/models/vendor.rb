# Represents the Vendor trait for an Entity.
class Vendor < ActiveRecord::Base
  include Disableable

  acts_as_paranoid

  belongs_to :default_contact, :class_name => Contact
  belongs_to :default_location, :class_name => Location
  belongs_to :entity

  validates \
    :entity,
    :is_active,
    :reference,
    :uuid,
    :presence => true
  validates :reference, :uniqueness => true

  def to_s
    entity.display_name
  end
end
