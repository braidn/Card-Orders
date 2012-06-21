class Commission < ActiveRecord::Base
  validates :commrate, :profitrate, :presence => true
end
