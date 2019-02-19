class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.text :email
      t.bigint :customer_id

      t.timestamps
    end
  end
end
