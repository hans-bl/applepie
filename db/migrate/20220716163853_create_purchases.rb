class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.boolean :status
      t.string :delivery_address
      t.integer :phone_number
      t.text :message
      t.references :ipod, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
