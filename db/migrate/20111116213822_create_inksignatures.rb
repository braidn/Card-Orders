class CreateInksignatures < ActiveRecord::Migration
  def change
    create_table :inksignatures do |t|
      t.string :vendorpartnumber
      t.string :vendor
      t.string :magtype
      t.integer :inktype
      t.integer :inkmsiperpound
      t.integer :inkcostperpound

      t.timestamps
    end
  end
end
