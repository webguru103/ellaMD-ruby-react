class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.integer :patient_id
      t.integer :ingredient_id
      t.integer :formulation_id
      t.integer :combined_id
      t.string :amount

      t.timestamps
    end
  end
end
