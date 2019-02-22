class AddPhoneNumberToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :phone_number, :text
  end
end
