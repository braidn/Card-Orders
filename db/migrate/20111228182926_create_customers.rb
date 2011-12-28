class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :traverseAcct
      t.string :addType
      t.string :city1
      t.string :city2
      t.string :commision
      t.string :company
      t.string :country
      t.string :status
      t.string :type
      t.string :po
      t.string :distributor
      t.string :invoiceInst
      t.string :market
      t.string :phone1
      t.string :phone2
      t.string :postalCode
      t.string :stateProvince
      t.string :street1
      t.string :street1a
      t.string :street2
      t.string :street2a
      t.string :website

      t.timestamps
    end
  end
end
