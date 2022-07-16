class CreateIpods < ActiveRecord::Migration[6.1]
  def change
    create_table :ipods do |t|
      t.string :name
      t.text :description
      t.string :model
      t.string :color
      t.string :state
      t.string :ipod_picture_url
      t.integer :price
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
