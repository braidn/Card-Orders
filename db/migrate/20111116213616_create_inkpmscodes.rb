class CreateInkpmscodes < ActiveRecord::Migration
  def change
    create_table :inkpmscodes do |t|
      t.string :vendorpartnumb
      t.string :vendor
      t.string :magtype
      t.integer :inktype
      t.integer :inkmsiperpound
      t.integer :inkcostperpound

      t.timestamps
    end
  end
end
