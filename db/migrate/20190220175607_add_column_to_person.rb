class AddColumnToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :subdomain, :text
  end
end
