json.array!(@medical_consultations) do |medical_consultation|
  json.extract! medical_consultation, :id, :doctor_id, :date, :syntoms, :specialization_id, :reason, :medical_opinion, :prescription, :ordered_tests
  json.url medical_consultation_url(medical_consultation, format: :json)
end
