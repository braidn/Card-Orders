class Adhesive < ActiveRecord::Base
  #t.string :adhesivedescription
  #t.integer :costperlb
  #t.integer :msiperlb
  #t.string :partnumber
  #t.string :primaryuse

  validates :adhesivedescription, :costperlb, :msiperlb, :presence => true
  validates :costperlb, :msiperlb, :numericality => {:only_integer => true}
end
