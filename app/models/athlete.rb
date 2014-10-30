class Athlete < ActiveRecord::Base
  has_many :wods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },:s3_host_name=> "s3-us-west-2-amazonaws.com"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_with AttachmentPresenceValidator, :attributes => :avatar, on: :update

  # attr_accessible :email, :password, :password_confirmation
end
