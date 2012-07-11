class Material < ActiveRecord::Base
  validates :vendor, :materialDescription, :materialMsiCost, :presence => true
end
