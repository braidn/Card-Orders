class CreateFoils < ActiveRecord::Migration
  def change
    create_table :foils do |t|
      t.text :description
      t.integer :length
      t.integer :msi
      t.string :type
      t.integer :width

      t.timestamps
    end
  end
end
