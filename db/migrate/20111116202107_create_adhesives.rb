class CreateAdhesives < ActiveRecord::Migration
  def change
    create_table :adhesives do |t|
      t.string :adhesivedescription
      t.integer :costperlb
      t.integer :msiperlb
      t.string :partnumber
      t.string :primaryuse

      t.timestamps
    end
  end
end
