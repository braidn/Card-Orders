class SalesTerm < ActiveRecord::Base
  validates :salesTermDescription, :presence => true
end
