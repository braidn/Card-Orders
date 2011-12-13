class CreateMagTapes < ActiveRecord::Migration
  def change
    create_table :mag_tapes do |t|
      t.integer :costPerMsi
      t.integer :costPerRoll
      t.integer :typeCate
      t.string :tapeDescription
      t.integer :tapeId
      t.integer :tapeLength
      t.string :tapeType
      t.integer :tapeWidth

      t.timestamps
    end
  end
end
