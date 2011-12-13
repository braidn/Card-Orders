class CreatePressStandards < ActiveRecord::Migration
  def change
    create_table :press_standards do |t|
      t.integer :ampMaterial
      t.integer :ampTime
      t.integer :colorMaterial
      t.integer :colorTime
      t.integer :colorWaste
      t.integer :dieMaterial
      t.integer :dieSpeed
      t.integer :dieTime
      t.integer :dieWaste
      t.integer :folderMaterial
      t.integer :folderSpeed
      t.integer :folderTime
      t.integer :folderWaste
      t.integer :headMaterial
      t.integer :headTime
      t.integer :hotStampMaterial
      t.integer :hotStampSpeed
      t.integer :hotStampTime
      t.integer :hotStampWaste
      t.string :inkType
      t.string :inkTypeSig
      t.string :inkTypeVarnish
      t.integer :inkMaterial
      t.integer :inkTime
      t.integer :inlineMaterial
      t.integer :inlineSpeed
      t.integer :inlineTime
      t.integer :inlineWaste
      t.integer :insertionMaterial
      t.integer :insertionSpeed
      t.integer :insertionTime
      t.integer :laminationMaterial
      t.integer :laminationSpeed
      t.integer :laminationTime
      t.integer :laminationWaste
      t.string :machineName
      t.integer :machineID
      t.integer :machineLabor
      t.integer :machineOverhead
      t.integer :machinePitch
      t.integer :machineSpeed
      t.string :machineType
      t.integer :machineWidth
      t.integer :numberMaterial
      t.integer :numberSpeed
      t.integer :numberTime
      t.integer :numberWaste
      t.integer :plateChangeWaste
      t.integer :plateChangeMaterial
      t.integer :plateChangeTime
      t.integer :pressSetupMaterial
      t.integer :pressSetupTime
      t.integer :printStations
      t.integer :rollChangeMaterial
      t.integer :rollChangeTime
      t.integer :rollChangeWaste
      t.integer :slitMaterial
      t.integer :slitSpeed
      t.integer :slitTime
      t.integer :slitWaste
      t.integer :trim
      t.integer :turretMaterial
      t.integer :turretSpeed
      t.integer :turretTime
      t.integer :turretWaste

      t.timestamps
    end
  end
end
