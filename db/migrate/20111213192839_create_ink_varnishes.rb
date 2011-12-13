class CreateInkVarnishes < ActiveRecord::Migration
  def change
    create_table :ink_varnishes do |t|
      t.integer :inkCostPerPound
      t.integer :inkMsiPerPound
      t.string :vendor
      t.string :vendorPartNumber

      t.timestamps
    end
  end
end
