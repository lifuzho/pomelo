# encoding: utf-8
class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :email, :password, :introduction, :nickname, :username
  validates :username, :email, :length => 4..50
  validates :password, :password, :length => 4..25, :on => :create

  before_save :create_hashed_password

  def make_salt
    self.salt = "#{self.id}-#{Time.now}"
  end

  def self.hash_password(salt, password)
    Digest::SHA1.hexdigest("#{salt}-#{password}")
  end

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    if user && user.password_match?(password)
      return user
    end
    return false
  end

  def authenticate
    user = User.find_by_username(username)
    if user
      unless user.password_match?(password)
        self.errors.add(:password, '不正确')
      end
    else
      self.errors.add(:user, '不存在')
    end
    return self
  end

  def password_match?(password)
    User.hash_password(self.salt, password) == self.hashed_password
  end

  private 
  def create_hashed_password
    if password
      make_salt
      self.hashed_password = User.hash_password(salt, password)
      self.password = nil
    end
  end
end
