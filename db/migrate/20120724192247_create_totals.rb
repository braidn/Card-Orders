class CreateTotals < ActiveRecord::Migration
  def change
    create_table :totals do |t|
      t.integer :quantity
      t.integer :freight_cost_cents, :null => false, :default => 0
      t.string :separate_freight, :default => "No"
      t.decimal :margin
      t.integer :desired_m_cents, :null => false, :default => 0
      t.string :selected, :default => "No"
      t.integer :product_id

      t.timestamps
    end
  end
end
