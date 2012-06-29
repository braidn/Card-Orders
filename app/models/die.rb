class Die < ActiveRecord::Base
  validates :dieCatagory, :description, :die_type, :presence => true
end
