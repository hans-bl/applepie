class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :ipod

  enum state: [:available, :pending, :approved]
end
