class Binderyspec < ActiveRecord::Base
  validates :cardsperunit, :quantityperhour, :unitmaterialcost, :comment, :numberofpersons, :presence => true
end
