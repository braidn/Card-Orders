class CreateFoiltypes < ActiveRecord::Migration
  def change
    create_table :foiltypes do |t|
      t.string :type

      t.timestamps
    end
  end
end
