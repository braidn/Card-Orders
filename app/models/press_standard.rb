class PressStandard < ActiveRecord::Base
  validates :machineName, :machineID, :presence => true
end
