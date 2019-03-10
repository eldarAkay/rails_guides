class AddLockedToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :locked, :boolean
  end
end
