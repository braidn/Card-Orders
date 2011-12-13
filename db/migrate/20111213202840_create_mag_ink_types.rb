class CreateMagInkTypes < ActiveRecord::Migration
  def change
    create_table :mag_ink_types do |t|
      t.integer :gallonCost
      t.string :inkType
      t.integer :inkTypeId

      t.timestamps
    end
  end
end
