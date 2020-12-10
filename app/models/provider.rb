class Provider < ApplicationRecord
  validates_presence_of :organisation_name, :registration_number, :designation
  validates_presence_of :corporate_form, unless: -> { local_authority? }

  enum corporate_form: {
    company: "Company",
    registered_society: "Registered Society",
    charity: "Charity",
    limited_liability_patnership: "LLP-Limited Liability Partnership",
    charitable_incorporated_organisation: "CIO-Charitable Incorporated Organisation",
    charitable_company: "Charitable Company",
    community_interest_company: "CIC-Community Interest Company"
  }

  enum designation: {
    non_profit: "Non-Profit",
    profit: "Profit",
    local_authority: "Local Authority"
  }
end
