class CreatePharmaceuticals < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmaceuticals do |t|
      t.string :patient_id
      t.string :name
      t.string :gender
      t.string :age
      t.string :email
      t.string :phone_number
      t.string :prescription_medicines
      t.string :delivery_address

      t.timestamps
    end
  end
end
