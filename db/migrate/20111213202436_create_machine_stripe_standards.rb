class CreateMachineStripeStandards < ActiveRecord::Migration
  def change
    create_table :machine_stripe_standards do |t|
      t.integer :ampMaterial
      t.integer :ampTime
      t.integer :headMaterial
      t.integer :headTime
      t.integer :inkMat
      t.integer :inkTime
      t.string :machineName
      t.integer :machineId
      t.integer :machineLabor
      t.integer :machineOverhead
      t.integer :machineSpeed
      t.string :machineType
      t.integer :machineWidth
      t.integer :rollChangeMat
      t.integer :rollChangeTime
      t.integer :slitMat
      t.integer :slitSpeed
      t.integer :slitTime
      t.integer :slitWaste
      t.integer :trim
      t.integer :turretMat
      t.integer :turretSpeed
      t.integer :turretTime
      t.integer :turretWaste

      t.timestamps
    end
  end
end
