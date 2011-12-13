class CreatePlateCosts < ActiveRecord::Migration
  def change
    create_table :plate_costs do |t|
      t.integer :digital
      t.integer :filmcost
      t.integer :filmSquareInch
      t.integer :laborCost
      t.integer :machineName
      t.string :processTime
      t.integer :sheetCost
      t.integer :sheetsPerCycle
      t.integer :squareInchPerSheet

      t.timestamps
    end
  end
end
