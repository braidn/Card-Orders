class Dietype < ActiveRecord::Base
  validates :dieDescription, :presence => true
end
