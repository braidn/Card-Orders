class Billing < ActiveRecord::Base
  validates :addressType, :postalCode, :state, :city, :presence => true
  validates :postalCode, :numericality => true
end
