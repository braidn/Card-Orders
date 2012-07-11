class MachineStripeStandard < ActiveRecord::Base
  validates :machineName, :machineId, :presence => true
end
