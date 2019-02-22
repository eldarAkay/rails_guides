class UpdatePermanentColumnValues < ActiveRecord::Migration[5.1]
  def up
    change_column :people, :permanent, 'integer USING CAST(permanent AS integer)'
    Person.connection.execute("UPDATE people SET permanent = CASE permanent WHEN 0 THEN 1 WHEN 1 THEN 2 END")
  end

  def down
    Person.connection.execute("UPDATE people SET permanent = CASE permanent WHEN 1 THEN 0 WHEN 2 THEN 1 END")
    change_column :people, :permanent, 'boolean USING CAST(permanent AS boolean)'
  end
end
