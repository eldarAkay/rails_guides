class UpdatePeramanentColumnToPerson < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :people do |t|
        dir.up do 
          t.change :permanent, 'integer USING CAST(permanent AS integer)'
        end
        dir.down { t.change :permanent, 'boolean USING CAST(permanent AS boolean)'}
      end
    end
  end
end
