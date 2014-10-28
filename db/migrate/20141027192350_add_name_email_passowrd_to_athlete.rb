class AddNameEmailPassowrdToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :name, :string
    add_column :athletes, :email, :string
    add_column :athletes, :password_digest, :string
    add_column :athletes, :remember_token, :string
    add_column :athletes, :admin, :boolean, default: false, null: false
  end

end
