require 'spec_helper'

describe "families/edit.html.haml" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name => "MyString",
      :sin => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => family_path(@family), :method => "post" do
      assert_select "input#family_fathers_first_name", :name => "family[fathers_first_name]"
      assert_select "input#family_fathers_last_name", :name => "family[fathers_last_name]"
      assert_select "input#family_mothers_first_name", :name => "family[mothers_first_name]"
      assert_select "input#family_mothers_last_name", :name => "family[mothers_last_name]"
      assert_select "input#family_email", :name => "family[email]"
      assert_select "input#family_wants_info_by_email", :name => "family[wants_info_by_email]"
    end
  end
end
