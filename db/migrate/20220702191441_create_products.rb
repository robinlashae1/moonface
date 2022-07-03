class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :size
      t.integer :user_id
      t.string :stone
      t.string :description
      t.integer :inStock
      t.string :type

      t.timestamps
    end
  end
end
