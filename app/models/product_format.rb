class ProductFormat < ActiveRecord::Base
  validates :description, :presence => true
end
