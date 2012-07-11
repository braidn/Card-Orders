class MachineIdStandard < ActiveRecord::Base
  validates :machineId, :machineName, :presence => true
end
