class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.string :value

      t.timestamps
    end
    add_index :tokens, :value
  end
end
