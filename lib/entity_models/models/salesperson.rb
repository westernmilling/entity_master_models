# Represents the +Salesperson+ trait details for an +Entity+.
class Salesperson < ActiveRecord::Base
  include Disableable

  acts_as_paranoid

  belongs_to :entity
  belongs_to :default_location, :class_name => Location

  scope :active, -> { unscoped.where(:is_active => 1) }

  validates \
    :entity,
    :reference,
    :uuid,
    :presence => true
  validates :reference, :uniqueness => true

  def to_s
    entity.name
  end
end
