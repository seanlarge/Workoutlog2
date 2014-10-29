class AddAttachmentphotoToAthletes < ActiveRecord::Migration
  def self.up
    change_table :athletes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :athletes, :photo
  end
end
