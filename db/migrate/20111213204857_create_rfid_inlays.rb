class CreateRfidInlays < ActiveRecord::Migration
  def change
    create_table :rfid_inlays do |t|
      t.integer :break1
      t.integer :break1Price
      t.integer :break2
      t.integer :break2Price
      t.integer :break3
      t.integer :break3Price
      t.integer :break4
      t.integer :break4Price
      t.integer :break5
      t.integer :break5Price
      t.string :inlayDescription
      t.integer :inlayId
      t.integer :inlayTypeId
      t.integer :price
      t.string :vendor
      t.string :vendorPartNumb

      t.timestamps
    end
  end
end
