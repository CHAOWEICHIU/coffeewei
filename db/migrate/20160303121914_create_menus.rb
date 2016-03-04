class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :comment_id
      t.string :name
      t.decimal :price
      t.text :description
      

      t.timestamps null: false
    end
    add_index("menus", "comment_id")
  end
end
