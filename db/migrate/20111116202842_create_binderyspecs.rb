class CreateBinderyspecs < ActiveRecord::Migration
  def change
    create_table :binderyspecs do |t|
      t.integer :cardsperunit
      t.text :comment
      t.integer :numberofpersons
      t.integer :quantityperhour
      t.integer :unitmaterialcost
      t.string :jobnumber
      t.string :newboxrequired
      t.integer :packageamoritizequantity
      t.text :packagecomment
      t.string :packageinnerboxid
      t.string :packageouterboxid

      t.timestamps
    end
  end
end
