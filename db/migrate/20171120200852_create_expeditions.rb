class CreateExpeditions < ActiveRecord::Migration[5.1]
  def change
    create_table :expeditions do |t|
      t.string :name
      t.text :description
      t.float :length
      t.string :difficulty

      t.timestamps
    end
  end
end
