class CreateFlows < ActiveRecord::Migration[6.1]
  def change
    create_table :flows do |t|
      t.boolean :kind, null: false
      t.date :date, null: false
      t.integer :money, null: false
      t.string :memo, limit: 50
      t.bigint :category_id, null: false

      t.timestamps
    end
  end
end
