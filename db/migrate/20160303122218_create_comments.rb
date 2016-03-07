class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :qty, default: 1
      t.integer :menu_id
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
    
  end
end
