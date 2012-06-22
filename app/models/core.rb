class Core < ActiveRecord::Base
  validates :generalName, :cost, :presence => true
end
