class ChangePriceColumn < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up {t.change :price, :string}
        dir.down {t.change :price, 'numeric USING CAST(price AS numeric)'}
      end
    end
  end
end
