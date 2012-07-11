class PlateCost < ActiveRecord::Base
  validates :machineName, :presence => true
end
