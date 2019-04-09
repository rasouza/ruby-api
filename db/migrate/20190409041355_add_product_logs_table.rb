class AddProductLogsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :product_logs do |t|
      t.string   :item_type
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object
      t.datetime :created_at
    end
    add_index :product_logs, %i(item_type item_id)
end
end
