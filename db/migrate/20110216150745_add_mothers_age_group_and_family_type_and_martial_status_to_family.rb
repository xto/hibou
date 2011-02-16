class AddMothersAgeGroupAndFamilyTypeAndMartialStatusToFamily < ActiveRecord::Migration
  def self.up
    add_column :families, :mothers_age_group, :string
    add_column :families, :family_type, :string
    add_column :families, :martial_status, :string
  end

  def self.down
    remove_column :families, :martial_status
    remove_column :families, :family_type
    remove_column :families, :mothers_age_group
  end
end
