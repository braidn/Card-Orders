class CreateEncodingstandards < ActiveRecord::Migration
  def change
    create_table :encodingstandards do |t|
      t.text :mchDescription
      t.integer :bagging
      t.integer :barcode
      t.integer :hico
      t.integer :inchespersecond
      t.integer :labor
      t.string :machineName
      t.string :multiplepass
      t.integer :overhead
      t.integer :runwaste
      t.integer :variabledata
      t.integer :secondsperhour

      t.timestamps
    end
  end
end
