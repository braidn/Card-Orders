class Inksignature < ActiveRecord::Base
  validates :vendorpartnumber, :vendor, :presence => true
  validates :inktype, :inkmsiperpound, :inkcostperpound, :numericality => true
end
