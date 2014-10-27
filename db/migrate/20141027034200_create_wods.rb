class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.boolean :pr
      t.string :score
      t.boolean :benchmark

      t.timestamps
    end
  end
end
