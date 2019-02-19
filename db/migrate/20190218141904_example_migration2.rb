class ExampleMigration2 < ActiveRecord::Migration[5.1]
  def up
    create_table :second_distributors do |t|
      t.string :zipcode
    end

    # add a CHECK constraint
    execute <<-SQL
      ALTER TABLE second_distributors
        ADD CONSTRAINT zipchk
        CHECK (char_length(zipcode) = 5);
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE second_distributors
        DROP CONSTRAINT zipchk
    SQL

    drop_table :second_distributors
  end
end
