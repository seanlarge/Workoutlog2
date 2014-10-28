class Athlete < ActiveRecord::Base
  has_many :wod
  before_create :create_remember_token
  before_save :normalize_fields

    validates :name,
      presence: true,
      length: { maximum: 50 }

    validates :email,
      presence: true,
      uniqueness: { case_sensitive: false },
      format: { with: /[^@]+@[^@]+/ }

    validates :password,
      length: { minimum: 8 }

    #secure password features
    has_secure_password

    #create a new remember toke for the user:
    def self.new_remember_token
      SecureRandom.urlsafe_base64
    end

    def self.hash(token)
      Digest::SHA1.hexdigest(token.to_s)
    end

private
   #creates new session token for the user
   def create_remember_token
      remember_token = Athlete.hash(Athlete.new_remember_token)
   end

   #Normalist fields for consistancy
   def normalize_fields
      self.email.downcase!
   end
end
