class Material < ActiveRecord::Base
  belongs_to :MatCategory
  validates :vendor, :materialDescription, :materialMsiCost, :presence => true
end
