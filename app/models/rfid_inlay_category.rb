class RfidInlayCategory < ActiveRecord::Base
  validates :inlayType, :presence => true
end
