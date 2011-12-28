class CreateToolingSpecifications < ActiveRecord::Migration
  def change
    create_table :tooling_specifications do |t|
      t.integer :addAmortizeQuantity
      t.integer :addToolingCost
      t.string :designBy
      t.datetime :designRevDate
      t.integer :dieAround
      t.integer :dieId
      t.string :dieSc
      t.string :imageFile
      t.integer :jobNumber
      t.string :newDieRequired
      t.text :toolingComment
      t.string :toolSc
      t.string :toolSpecificationId

      t.timestamps
    end
  end
end
