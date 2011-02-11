class AddFathersAndMothersNameAndEmailToFamilies < ActiveRecord::Migration
  def self.up
    add_column :families, :fathers_first_name, :string
    add_column :families, :fathers_last_name, :string
    add_column :families, :mothers_first_name, :string
    add_column :families, :mothers_last_name, :string
    add_column :families, :email, :string
    add_column :families, :wants_info_by_email, :boolean, :default => true
  end

  def self.down
    remove_column :families, :wants_info_by_email
    remove_column :families, :email
    remove_column :families, :mothers_last_name
    remove_column :families, :mothers_first_name
    remove_column :families, :fathers_last_name
    remove_column :families, :fathers_first_name
  end
end
