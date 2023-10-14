class CreateQuotecategories < ActiveRecord::Migration[7.0]
  def change
    create_table :quotecategories do |t|
      t.references :quotes, null: true, foreign_key: true
      t.references :categories, null: true, foreign_key: true

      t.timestamps
    end
  end
end
