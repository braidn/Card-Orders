class MagTape < ActiveRecord::Base
  validates :tapeDescription, :tapeId, :presence => true
end
