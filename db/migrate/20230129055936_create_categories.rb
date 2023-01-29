class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 20
      t.boolean :kind, null: false

      t.timestamps
    end
  end
end
