class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.string :addressType
      t.string :city
      t.string :country
      t.integer :customerId
      t.string :postalCode
      t.string :state
      t.string :street1
      t.string :street1a
      t.string :street2
      t.string :street2a

      t.timestamps
    end
  end
end
