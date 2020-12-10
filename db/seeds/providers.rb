require "yaml"

providers = YAML.safe_load(File.read(File.join(Rails.root, "vendor", "data", "registered_providers_november_2020.yml")))
providers.each do |provider|
  provider_params = {
    organisation_name: provider["Organisation Name"],
    registration_number: provider["Registration Number"],
    designation: Provider.designations.key(provider["Designation"]),
    corporate_form: Provider.corporate_forms.key(provider["Corporate Form"])
  }
  Provider.find_or_create_by(registration_number: provider["Registration Number"]).update(provider_params)
end
