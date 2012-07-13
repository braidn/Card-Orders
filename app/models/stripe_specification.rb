class StripeSpecification < ActiveRecord::Base
  validates :jobNumber, :presence => true
end
