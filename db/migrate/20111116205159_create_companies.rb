class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :commissioned
      t.string :name
      t.name :country
      t.string :market
      t.string :phone
      t.string :salesrep
      t.string :state
      t.string :url
      t.string :zip

      t.timestamps
    end
  end
end
