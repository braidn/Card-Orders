class Laminate < ActiveRecord::Base
  validates :lamAdhesive, :lamDescription, :presence => true
end
