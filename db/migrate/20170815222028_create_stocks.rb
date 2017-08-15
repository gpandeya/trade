class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string  :name
      t.decimal :units_purchased
      t.decimal :purchase_price
      
      t.belongs_to  :portfolio, index: true, null: false
      
      t.timestamps
    end
  end
end
