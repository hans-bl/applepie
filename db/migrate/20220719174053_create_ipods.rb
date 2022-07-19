class CreateIpods < ActiveRecord::Migration[6.1]
  def change
    create_table :ipods do |t|
      t.string :name
      t.string :description
      t.string :model
      t.string :color
      t.string :state
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :capacity

      t.timestamps
    end
  end
end
