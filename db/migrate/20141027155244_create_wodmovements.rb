class CreateWodmovements < ActiveRecord::Migration
  def change
    create_table :wod_movements do |t|
      t.integer :wod_id, :null => false
      t.integer :movement_id, :null => false

      t.timestamps
    end
  end
end
