class Athlete < ActiveRecord::Base
  has_many :wods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :photo, :default_url => "/images/:style/missing.png",
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  validates_with AttachmentPresenceValidator, :attributes => :photo

  # attr_accessible :email, :password, :password_confirmation
end
