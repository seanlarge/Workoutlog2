class SetIndexAtAthlete < ActiveRecord::Migration
  def change
    add_index :athletes, :email, unique: true
    add_index :athletes, :remember_token
  end

end
