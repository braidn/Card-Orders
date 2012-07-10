class Inkcatagory < ActiveRecord::Base
  validates :description, :presence => true
end
