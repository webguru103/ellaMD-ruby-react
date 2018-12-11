class AddColumnCombineIdToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :combine_id, :integer
  end
end
