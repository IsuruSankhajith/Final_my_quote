class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :category_name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
