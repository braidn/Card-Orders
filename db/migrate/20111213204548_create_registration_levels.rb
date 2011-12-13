class CreateRegistrationLevels < ActiveRecord::Migration
  def change
    create_table :registration_levels do |t|
      t.text :registrationDescription
      t.integer :registrationLevelId
      t.integer :registrationSpeed
      t.integer :registrationWaste

      t.timestamps
    end
  end
end
