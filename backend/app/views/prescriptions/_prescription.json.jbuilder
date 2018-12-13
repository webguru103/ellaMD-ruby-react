json.extract! prescription, :id, :patient_id, :ingredient_id, :formulation_id, :combined_id, :amount, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
