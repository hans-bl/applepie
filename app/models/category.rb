class Category < ApplicationRecord
  has_many :ipods
  after_validation :set_slug

  def set_slug
    self.slug = name.parameterize
  end

  def to_param
    "#{self.id}-#{self.slug}"
  end
end
