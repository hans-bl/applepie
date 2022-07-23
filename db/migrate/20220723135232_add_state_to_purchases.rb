class AddStateToPurchases < ActiveRecord::Migration[6.1]
  def change
    add_column :purchases, :state, :integer, default: 0
  end
end
