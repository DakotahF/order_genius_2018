class CreateOrderMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_menu_items do |t|
      t.references :order, foreign_key: true, null: false
      t.references :menu_item, foreign_key: true, null: false
      t.integer :quantity, null: false

      t.timestamps
    end

    add_index :order_menu_items, [:order_id, :menu_item_id], unique: true
  end
end
