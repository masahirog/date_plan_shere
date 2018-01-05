class CreatePlanDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_details do |t|
      t.time :start_time
      t.string :detail
      t.text :memo
      t.text :url
      t.integer :genre_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
