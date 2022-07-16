class User < ApplicationRecord
  has_many :ipods, dependent: :destroy
end
