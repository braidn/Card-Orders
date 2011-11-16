class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :company
      t.string :email
      t.string :fax
      t.string :firstName
      t.string :lastName
      t.string :cell
      t.string :mainPhone
      t.string :state
      t.string :url
      t.string :zip

      t.timestamps
    end
  end
end
