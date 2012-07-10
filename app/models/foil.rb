class Foil < ActiveRecord::Base
  validates :description, :foil_type, :presence => true
end
