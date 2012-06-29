class Coretype < ActiveRecord::Base
  validates :matDescription, :material, :presence => true
end
