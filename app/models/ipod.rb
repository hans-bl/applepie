class Ipod < ApplicationRecord
  belongs_to :user
  has_many :purchases
  has_one_attached :photo

  validates :name, :description, :model, :color, :state, :capacity, :price, presence: true
  validates :name, length: { minimum: 4 }
  validates :description, length: { minimum: 6 }
  validates :model, inclusion: {
    in: ['iPod Classic', 'iPod Mini', 'iPod Nano', 'iPod Shuffle', 'iPod Touch']
  }
  validates :color, inclusion: {
    in: %w[Grey Black White Blue Green Pink]
  }
  validates :state, inclusion: {
    in: %w[Fair Good Excellent]
  }
  validates :capacity, inclusion: {
    in: [16, 32, 64, 128, 256]
  }
end
