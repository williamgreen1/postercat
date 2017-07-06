class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
         
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  
  has_many :posts
end