class SecuritySpec < ActiveRecord::Base
  validates :jobNumber, :presence => true
end
