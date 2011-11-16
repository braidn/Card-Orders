class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :boxtype
      t.integer :boxesperskid
      t.string :caliper
      t.integer :cardsperskid
      t.string :concatview
      t.integer :estimateboxselection
      t.integer :height
      t.integer :innercost
      t.string :innerouter
      t.integer :innerquantity
      t.text :internaldescription
      t.integer :length
      t.string :maincustomer
      t.integer :outercost
      t.integer :outerquantity
      t.integer :rowshigh
      t.string :selectskid
      t.string :size
      t.integer :width

      t.timestamps
    end
  end
end
