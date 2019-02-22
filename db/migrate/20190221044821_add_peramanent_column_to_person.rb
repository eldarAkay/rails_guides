class AddPeramanentColumnToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :permanent, :boolean
  end
end
