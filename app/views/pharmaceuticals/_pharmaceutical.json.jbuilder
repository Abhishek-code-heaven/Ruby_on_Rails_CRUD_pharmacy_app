json.extract! pharmaceutical, :id, :patient_id, :name, :gender, :age, :email, :phone_number, :prescription_medicines, :delivery_address, :created_at, :updated_at
json.url pharmaceutical_url(pharmaceutical, format: :json)
