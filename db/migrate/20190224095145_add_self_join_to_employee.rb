class AddSelfJoinToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :manager, index: true
  end
end
