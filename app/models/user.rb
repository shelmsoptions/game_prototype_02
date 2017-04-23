class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :characters
  has_many :user_characters, through: :characters, source: :user
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :alias

  validates :first_name, :last_name, :alias, presence: true
end