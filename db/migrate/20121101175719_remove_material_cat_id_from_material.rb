class RemoveMaterialCatIdFromMaterial < ActiveRecord::Migration
  change_table(:materials) do |t|
    t.remove :materialCatId
  end
end
