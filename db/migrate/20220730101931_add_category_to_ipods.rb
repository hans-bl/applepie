class AddCategoryToIpods < ActiveRecord::Migration[6.1]
  def change
    add_reference :ipods, :category, index: true
    add_foreign_key :ipods, :categories
  end
end
