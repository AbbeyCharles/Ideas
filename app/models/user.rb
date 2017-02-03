class User < ActiveRecord::Base
  has_secure_password
  has_many :ideas
  has_many :likes
  attr_accessor :password_confirm, :password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: {message: ["Name can't be blank"]}
  validates :alias, presence: {message: ["Alias can't be blank"]}
  validates :password, presence: {message: ["Password can't be blank"]}, :on => :create, length: {minimum: 8}
  validates :password_confirm, presence: {message:["Password Confirmation can't be blank"]}, :on => :create
  validates :email, presence: {message: ["Email name can't be blank"]}, :format => { :with => email_regex}, :uniqueness => { :case_sensitive => false}, :on => :create
  def total_likes
    self.likes.sum(:count)
  end
  def total_posts
    self.ideas.sum(:user_id)
  end
end
