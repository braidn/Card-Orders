class CreateDies < ActiveRecord::Migration
  def change
    create_table :dies do |t|
      t.string :dieCatagory
      t.integer :costpercard
      t.integer :costspertooth
      t.text :description
      t.integer :initialCost
      t.integer :initialLife
      t.integer :retoolCost
      t.integer :retoolLife
      t.integer :retoolTimes
      t.integer :totalCards
      t.integer :totalCost
      t.string :type
      t.string :vendorIDNumb

      t.timestamps
    end
  end
end
