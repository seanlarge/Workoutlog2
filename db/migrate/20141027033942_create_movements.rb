class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :name
      t.string :description
      t.string :equipment

      t.timestamps
    end
  end
end
