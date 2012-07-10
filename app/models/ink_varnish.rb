class InkVarnish < ActiveRecord::Base
  validates :vendor, :vendorPartNumber, :presence => true
end
