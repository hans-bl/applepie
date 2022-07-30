class Ipod < ApplicationRecord
  belongs_to :user
  has_many :purchases
  belongs_to :category
  has_one_attached :photo

  validates :name, :description, :color, :state, :capacity, :price, presence: true
  validates :name, length: { minimum: 4 }
  validates :description, length: { minimum: 6 }
  # validates :model, inclusion: {
  #   in: ['iPod Classic', 'iPod Mini', 'iPod Nano', 'iPod Shuffle', 'iPod Touch']
  # }
  validates :color, inclusion: {
    in: %w[Grey Black White Blue Green Pink]
  }
  validates :state, inclusion: {
    in: %w[Fair Good Excellent]
  }
  validates :capacity, inclusion: {
    in: [16, 32, 64, 128, 256]
  }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_model,
    against: [ :name, :model ],
    using: {
      tsearch: { prefix: true }
    }
end
