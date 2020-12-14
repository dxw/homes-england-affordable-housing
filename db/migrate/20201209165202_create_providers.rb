class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers, id: :uuid do |t|
      t.string :organisation_name, index: true
      t.string :registration_number
      t.string :designation
      t.string :corporate_form
      t.timestamps
    end
  end
end
