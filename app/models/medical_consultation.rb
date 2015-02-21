class MedicalConsultation < ActiveRecord::Base

  validates_presence_of :doctor_id
  validates_presence_of :date
  validates_presence_of :specialization_id
  validates_presence_of :prescription
end
