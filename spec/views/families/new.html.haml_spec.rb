require 'spec_helper'

describe "families/new.html.haml" do
  before(:each) do
    assign(:family, stub_model(Family,
      :name => "MyString",
      :sin => "MyString"
    ).as_new_record)
  end

  it "renders new family form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => families_path, :method => "post" do
      assert_select "input#family_fathers_first_name", :name => "family[fathers_first_name]"
      assert_select "input#family_fathers_last_name", :name => "family[fathers_last_name]"
      assert_select "input#family_mothers_first_name", :name => "family[mothers_first_name]"
      assert_select "input#family_mothers_last_name", :name => "family[mothers_last_name]"
      assert_select "input#family_email", :name => "family[email]"
      assert_select "input#family_wants_info_by_email", :name => "family[wants_info_by_email]"
      assert_select "select#family_household_income", :name => "family[household_income]"
    end
  end

  it "renders a list for the payment methods" do
    render

    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => 'family[household_income]') do |select|
        select.should have_selector("option", :value => I18n.t(:less_than_20000))
        select.should have_selector("option", :value => I18n.t(:between_20000_and_24999))
        select.should have_selector("option", :value => I18n.t(:between_25000_and_29999))
        select.should have_selector("option", :value => I18n.t(:between_30000_and_34999))
        select.should have_selector("option", :value => I18n.t(:between_35000_and_39999))
        select.should have_selector("option", :value => I18n.t(:greater_or_equal_to_40000))
      end
    end
  end
end
