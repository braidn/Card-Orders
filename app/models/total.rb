class Total < ActiveRecord::Base
  monetize :freight_cost_cents
  monetize :desired_m_cents
  validates :desired_m_cents, :quantity, :presence => true
end
