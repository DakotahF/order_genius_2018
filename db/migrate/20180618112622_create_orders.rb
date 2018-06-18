class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :restaurant, foreign_key: true, null: false
      t.string :customer_email, null: false

      t.timestamps
    end
  end
end
