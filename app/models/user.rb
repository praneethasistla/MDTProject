class User < ActiveRecord::Base
  has_many :inventories
  has_many :transactions

  has_secure_password

  validates_presence_of :username, :name, :address, :email
  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create
  validates_confirmation_of :password, :message => "Passwords did not match"



  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end

end
