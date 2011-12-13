class CreateSalesReps < ActiveRecord::Migration
  def change
    create_table :sales_reps do |t|
      t.integer :orderId
      t.string :name

      t.timestamps
    end
  end
end
