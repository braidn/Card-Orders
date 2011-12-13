class CreateSalesTerms < ActiveRecord::Migration
  def change
    create_table :sales_terms do |t|
      t.string :discountDays
      t.integer :discountRate
      t.string :payDays
      t.string :salesTermDescription
      t.integer :salesTermId

      t.timestamps
    end
  end
end
