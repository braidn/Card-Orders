class Inkpmscode < ActiveRecord::Base
  validates :vendorpartnumb, :vendor, :presence => true
  validates :inktype, :inkmsiperpound, :inkcostperpound, :numericality => true
end
