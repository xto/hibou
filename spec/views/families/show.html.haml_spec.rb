require 'spec_helper'

describe "families/show.html.haml" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
        :fathers_first_name  => "Father's First Name",
        :fathers_last_name   => "Father's Last Name",
        :mothers_first_name  => "Mother's First Name",
        :mothers_last_name   => "Mother's Last Name",
        :email               => 'someone@somewhere.world',
        :wants_info_by_email => true
    ))
  end

  it "renders attributes in <p>" do
    render

    rendered.should match(/Father's First Name/)
    rendered.should match(/Father's Last Name/)
    rendered.should match(/Mother's First Name/)
    rendered.should match(/Mother's Last Name/)
    rendered.should match(/someone@somewhere.world/)
  end
end
