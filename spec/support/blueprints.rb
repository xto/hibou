require 'machinist/active_record'
include FamiliesHelper

  User.blueprint do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
  end

  Address.blueprint do
    civic_number { (1..100).to_a.rand }
    street       { Faker::Address.street_name}
    apartment    { (1..100).to_a.rand }
    city         { Faker::Address.city }
    province     { Faker::Address.state}
    postal_code  { Faker::Address.postcode}
  end

 Child.blueprint do
   first_name { Faker::Name.first_name }
   last_name  { Faker::Name.last_name }
   birth_date { Date.today.years_ago(1) }
   family { Family.make!}
 end

  Family.blueprint do
    fathers_first_name { Faker::Name.first_name }
    fathers_last_name  { Faker::Name.last_name }
    mothers_first_name { Faker::Name.first_name }
    mothers_last_name  { Faker::Name.last_name }
    email              { Faker::Internet.email }
    address            { Address.make!}
    household_income   { humanize_income_brackets.rand[0] }
    mothers_age_group  { humanize_mothers_age_groups.rand[0] }
    family_type        { humanize_family_types.rand[0] }
    martial_status     { humanize_martial_statuses.rand[0] }
  end

Booking.blueprint do
  child { Child.make }
  date { Date.tomorrow }
  payment_method { %w{Cash Cheque Sipple DP CISC Fond\ Social Autre}.rand }
  period { %w{AM PM}.rand }
end


