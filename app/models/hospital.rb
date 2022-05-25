class Hospital < ApplicationRecord
  has_many :doctors

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
end
