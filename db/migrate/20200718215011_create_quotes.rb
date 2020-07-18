class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :_id
      t.text :dialog
      t.string :movie_id
      t.string :character_id
      t.timestamps
    end
  end
end
