class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string  :name
      t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
