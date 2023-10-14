class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.text :text, null: false
      t.text :user_comment, null: true
      t.integer :publication_year, null: true
      t.boolean :ispublic, null: false
      t.references :users, null: true, foreign_key: true
      t.references :philosophers, null: true, foreign_key: true

      t.timestamps
    end
    
    
  end
end
