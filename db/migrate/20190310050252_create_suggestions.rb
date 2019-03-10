class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.string :text
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
