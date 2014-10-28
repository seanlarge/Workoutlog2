class RemoveEmailAndPasswordDigestAndRememberTokenAndAdminFromAthletes < ActiveRecord::Migration
  def change
    remove_column :athletes, :email, :string
    remove_column :athletes, :password_digest, :string
    remove_column :athletes, :remember_token, :string
    remove_column :athletes, :admin, :boolean
  end
end
