class Box < ActiveRecord::Base
  validates :boxtype, :boxesperskid, :cardsperskid, :size, :length, :width, :height, :innercost,
    :outercost, :presence => true
end
