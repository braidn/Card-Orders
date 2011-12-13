class CreateSkids < ActiveRecord::Migration
  def change
    create_table :skids do |t|
      t.integer :quantityPerSkid
      t.integer :skidCost
      t.string :skidDescription
      t.string :skidEntryPoints
      t.integer :skidHeight
      t.integer :skidId
      t.integer :skidLength
      t.string :skidMat
      t.integer :skidWidth

      t.timestamps
    end
  end
end
