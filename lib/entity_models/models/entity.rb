# An entity is a representation of an organization.
#
# Entities can be any kind of organization, customer, vendor, etc.
class Entity < ActiveRecord::Base
  include Disableable

  acts_as_paranoid

  has_many :contacts
  has_many :locations, :inverse_of => :entity
  has_one :customer
  has_one :salesperson
  has_one :vendor

  validates \
    :is_active,
    :name,
    :cached_long_name,
    :reference,
    :uuid,
    :presence => true
  validates :reference, :uniqueness => true

  def to_s
    name
  end
end
