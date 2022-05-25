class Doctor < ApplicationRecord
  belongs_to :hospital, optional: true
  validates :name, :degree, presence: true, length: {minimum: 3, maximum: 50 }
  validates :email, presence: true, uniqueness: true

  after_create_commit :send_welcome_email

  def send_welcome_email
    DoctorMailer.with(doctor: self).doctor_welcome_email.deliver_later
  end
end
