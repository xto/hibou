require 'spec_helper'

describe "families/index.html.haml" do
  before(:each) do
    assign(:families, [
        stub_model(Family,
                   :fathers_first_name  => "Father's First Name",
                   :fathers_last_name   => "Father's Last Name",
                   :mothers_first_name  => "Mother's First Name",
                   :mothers_last_name   => "Mother's Last Name",
                   :email               => 'someone@somewhere.world',
                   :wants_info_by_email => true
        ),
        stub_model(Family,
                   :fathers_first_name  => "Father's First Name",
                   :fathers_last_name   => "Father's Last Name",
                   :mothers_first_name  => "Mother's First Name",
                   :mothers_last_name   => "Mother's Last Name",
                   :email               => 'someone@somewhere.world',
                   :wants_info_by_email => true
        )
    ])
  end

  it "renders a list of families" do
    render

    assert_select "tr>td", :text => "Father's First Name".to_s, :count => 2
        assert_select "tr>td", :text => "Father's Last Name".to_s, :count => 2
        assert_select "tr>td", :text => "Mother's First Name".to_s, :count => 2
        assert_select "tr>td", :text => "Mother's Last Name".to_s, :count => 2
        assert_select "tr>td", :text => 'someone@somewhere.world'.to_s, :count => 2

  end
end
