class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.integer :age
      t.string :height
      t.string :weight
      t.string :body_mass_index
      t.string :blood_pressure
      t.integer :cholesterol

      t.timestamps
    end
  end
end
