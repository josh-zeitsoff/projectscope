class Items < ActiveRecord::Migration
  def change
  	create_table :items, :force => true do |t|
    t.string :description
    t.integer :status
    t.integer :order
    t.integer :iteration
    t.timestamps
    end
  end
end
