class CreateMachineIdStandards < ActiveRecord::Migration
  def change
    create_table :machine_id_standards do |t|
      t.integer :dieMaterial
      t.integer :dieSpeed
      t.integer :dieTime
      t.integer :dieWaste
      t.integer :folderMaterial
      t.integer :folderSpeed
      t.integer :folderTime
      t.integer :folderWaste
      t.integer :insertionMaterial
      t.integer :insertionSpeed
      t.integer :insertionTime
      t.string :machineName
      t.integer :machineId
      t.integer :machineLabor
      t.integer :machineOverhead
      t.integer :machinePitch
      t.integer :machineSpeed
      t.string :machineType
      t.integer :machineWidth
      t.integer :numMat
      t.integer :numSpeed
      t.integer :numbTime
      t.integer :numWaste
      t.integer :rollChangeMat
      t.integer :rollChangeTime
      t.integer :rollChangeWaste
      t.integer :slitMat
      t.integer :slitSpeed
      t.integer :slitTime
      t.integer :slitWaste
      t.integer :trim

      t.timestamps
    end
  end
end
