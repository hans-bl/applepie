class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ipods
  has_many :ipods, through: :purchases
  has_many :purchases
  has_one_attached :photo

  validates :first_name, :last_name, :email, :password, presence: true
  # validates :first_name, :last_name, :email, :password, allow_blank: false
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
