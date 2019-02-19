class ChangeProducts < ActiveRecord::Migration[5.1]
  change_table :products do |t|
    t.rename :title, :name
  end
end
