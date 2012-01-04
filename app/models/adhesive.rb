class Adhesive < ActiveRecord::Base
  #t.string :adhesivedescription
  #t.integer :costperlb
  #t.integer :msiperlb
  #t.string :partnumber
  #t.string :primaryuse

  validates :adhesivedescription, :costperlb, :msiperlb, :partnumber, :primaryuse, :presence => true
end
