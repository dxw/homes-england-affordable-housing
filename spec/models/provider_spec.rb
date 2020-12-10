require "rails_helper"

RSpec.describe Provider, type: :model do
  describe "validations" do
    it { should validate_presence_of(:organisation_name) }
    it { should validate_presence_of(:registration_number) }
    it { should validate_presence_of(:designation) }

    context "when the designation is a Local Authority" do
      subject { build(:provider, :local_authority) }
      it { should_not validate_presence_of(:corporate_form) }
    end

    context "when the designation is not a Local Authority" do
      subject { build(:provider) }
      it { should validate_presence_of(:corporate_form) }
    end
  end
end
