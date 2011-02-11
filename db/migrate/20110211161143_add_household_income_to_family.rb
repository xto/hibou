class AddHouseholdIncomeToFamily < ActiveRecord::Migration
  def self.up
    add_column :families, :household_income, :string
  end

  def self.down
    remove_column :families, :household_income
  end
end
