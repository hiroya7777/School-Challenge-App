class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true,length:{ maximum: 15 }
  validates :email, presence: true
  #validates :email,format: {with: /\A[\w+\-.]+@[a-z\d\-.]+.\/[a-z]+\z/i}
  has_secure_password

  has_many :topics
  has_many :comments
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  PW_REGEX = /\A(?=.＊?[a-z])(?=.＊?\d)[a-z\d]{8,32}\z/i
 #validates :password, presence: true, format: { with: PW_REGEX }
 #validates :password_confirmation, presence: true, format: { with: PW_REGEX }
end
