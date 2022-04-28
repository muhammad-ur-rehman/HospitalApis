class Doctor < ApplicationRecord
  belongs_to :hospital
  validates :name, :degree, presence: true, length: {minimum: 5, maximum: 50 }
end
