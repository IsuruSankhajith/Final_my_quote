class CreatePhilosophers < ActiveRecord::Migration[7.0]
  def change
    create_table :philosophers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birth_year, null: false
      t.date :death_year, null: true
      t.string :short_biography, null: true

      t.timestamps
    end
  end
end
