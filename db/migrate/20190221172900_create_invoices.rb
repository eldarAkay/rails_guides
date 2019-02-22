class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.decimal :total_value
      t.decimal :discount
      t.timestamps
    end
  end
end
