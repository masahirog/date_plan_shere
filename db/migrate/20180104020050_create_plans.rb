class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.integer :prefecture_id
      t.integer :user_id
      t.integer :likes_count

      t.timestamps
    end
  end
end
