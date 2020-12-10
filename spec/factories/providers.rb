FactoryBot.define do
  factory :provider do
    organisation_name { Faker::Company.name }
    registration_number { Faker::Alphanumeric }
    designation { "non_profit" }
    corporate_form { "charity" }

    trait :local_authority do
      designation { "local_authority" }
      corporate_form { nil }
    end
  end
end
