class CreateDietypes < ActiveRecord::Migration
  def change
    create_table :dietypes do |t|
      t.text :dieDescription

      t.timestamps
    end
  end
end
