class RfidInlay < ActiveRecord::Base
  validates :inlayDescription, :vendor, :presence => true
end
