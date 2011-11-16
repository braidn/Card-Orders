class CreateBinderies < ActiveRecord::Migration
  def change
    create_table :binderies do |t|
      t.string :opdescription
      t.string :unit
      t.integer :unitcost

      t.timestamps
    end
  end
end
