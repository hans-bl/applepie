class Purchase < ApplicationRecord
  belongs_to :ipod
  belongs_to :user
end
