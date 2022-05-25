FactoryBot.define do
  factory :doctor do
    hospital { nil }
    name { "MyString" }
    degree { "MyString" }
    speciality { "MyString" }
    experiance { "" }
  end
end
