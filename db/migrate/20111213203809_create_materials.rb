class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :materialCatId
      t.integer :blueFeetPerMinute
      t.integer :blueLength
      t.integer :coredOd
      t.integer :eganFeetPerMinute
      t.integer :eganLength
      t.string :materialDescription
      t.integer :materialMsiCost
      t.string :materialPreStripe
      t.integer :materialRollLengthMaster
      t.integer :materialRollWidth
      t.integer :materialThickness
      t.string :vendor
      t.string :vendorPartNum

      t.timestamps
    end
  end
end
