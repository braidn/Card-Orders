class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :additionalInfo
      t.string :attention
      t.string :city
      t.string :country
      t.string :customerId
      t.string :freightCollect3rdAddr1
      t.string :freightCollect3rdAddr2
      t.string :freightCollect3rdCity
      t.string :freightCollect3rdComment
      t.string :freightCollect3rdName
      t.string :freightCollect3rdState
      t.string :freightCollect3rdZip
      t.string :freightShippingInst
      t.string :instructions
      t.string :name
      t.string :phone
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
