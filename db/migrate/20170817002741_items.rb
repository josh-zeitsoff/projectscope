class Items < ActiveRecord::Migration
  def change
  	create_table :items, :force => true do |t|
    t.string :name
    t.integer :order
    t.integer :status
    t.integer :iteration
    t.timestamps
    end
   end
end
