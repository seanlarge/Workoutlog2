class AddAthleteIdToWod < ActiveRecord::Migration
  def change
    add_column :wods, :athlete_id, :integer
  end
end
