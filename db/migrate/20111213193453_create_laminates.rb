class CreateLaminates < ActiveRecord::Migration
  def change
    create_table :laminates do |t|
      t.string :lamAdhesive
      t.text :lamDescription
      t.integer :lamLength
      t.integer :lamMsi
      t.string :lamType
      t.integer :lamWidth

      t.timestamps
    end
  end
end
