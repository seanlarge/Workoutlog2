class AddAttachmentAvatarToAthletes < ActiveRecord::Migration
  def self.up
    change_table :athletes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :athletes, :avatar
  end
end
