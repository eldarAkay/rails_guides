class AddExpectedSalaryToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :expected_salary, :integer
  end
end
