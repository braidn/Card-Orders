class Boxtype < ActiveRecord::Base
  validates :boxid, :boxtype, :presence => true
end
