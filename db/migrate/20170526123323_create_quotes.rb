class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :character
      t.text :quote
      t.string :location
      t.string :witness

      t.timestamps
    end
  end
end
