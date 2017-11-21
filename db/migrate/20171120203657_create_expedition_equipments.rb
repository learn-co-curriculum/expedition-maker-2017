class CreateExpeditionEquipments < ActiveRecord::Migration[5.1]
  def change
    create_table :expedition_equipments do |t|
      t.references :expedition, foreign_key: true
      t.references :equipment, foreign_key: true
    end
  end
end
