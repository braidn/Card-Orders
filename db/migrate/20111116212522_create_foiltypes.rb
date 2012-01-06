class CreateFoiltypes < ActiveRecord::Migration
  def change
    create_table :foiltypes do |t|
      #this might be a reserved keyword
      t.string :type

      t.timestamps
    end
  end
end
