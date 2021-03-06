class User < ActiveRecord::Base
  has_many :ideas

  validates_inclusion_of :official, :in => [true, false]

  attr_accessor :password
  attr_accessible :name, :email, :neighborhood, :official, :password, :password_confirmation

# Automatically create the virtual attribute 'password_confirmation'.
  validates :password, :presence => true,
  :confirmation => true,
  :length => { :within => 6..40 }

  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
  private
  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(password)
  end
  
  def encrypt(string)
    secure_hash(string)
    end

  def make_salt
    secure_hash(password)
    end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
end


# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  neighborhood_id    :integer
#  official           :boolean
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

