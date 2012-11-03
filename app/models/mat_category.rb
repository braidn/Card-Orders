class MatCategory < ActiveRecord::Base
  has_many :materials
  validates :matCatDescription, :presence => true
end
