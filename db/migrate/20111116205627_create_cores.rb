class CreateCores < ActiveRecord::Migration
  def change
    create_table :cores do |t|
      t.string :generalName
      t.integer :cost
      t.integer :innerDiameter
      t.integer :outerDiameter
      t.integer :type
      t.integer :wallThickness
      t.integer :width
      t.string :internalName

      t.timestamps
    end
  end
end
