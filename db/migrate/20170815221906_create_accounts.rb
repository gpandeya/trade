class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string  :name, null:false
      t.decimal :balance, default:0,null:false
      
      t.timestamps
    end
    add_index :accounts, [:name], unique: true
  end
end
