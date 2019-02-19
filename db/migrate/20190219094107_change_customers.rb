class ChangeCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :id, :primary_key
  end
end
