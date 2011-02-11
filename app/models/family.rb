class Family < ActiveRecord::Base
  INCOME_BRACKETS = [:less_than_20000,
                     :between_20000_and_24999,
                     :between_25000_and_29999,
                     :between_30000_and_34999,
                     :between_35000_and_39999,
                     :greater_or_equal_to_40000]

  has_one :address
  has_many :children
  accepts_nested_attributes_for :address

  validates_presence_of :fathers_first_name, :fathers_last_name, :mothers_first_name, :mothers_last_name, :address, :household_income
  validates_inclusion_of :household_income, :in => INCOME_BRACKETS
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
