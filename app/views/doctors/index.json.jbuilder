json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :email, :website, :crm_number, :address, :phone1, :phone2, :comments
  json.url doctor_url(doctor, format: :json)
end
