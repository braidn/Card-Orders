class MatCategory < ActiveRecord::Base
  validates :matCatDescription, :presence => true
end
