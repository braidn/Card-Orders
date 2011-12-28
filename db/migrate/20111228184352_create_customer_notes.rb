class CreateCustomerNotes < ActiveRecord::Migration
  def change
    create_table :customer_notes do |t|
      t.integer :company
      t.text :noteInfo

      t.timestamps
    end
  end
end
