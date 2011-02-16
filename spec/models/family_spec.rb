require 'spec_helper'

describe Family do
  describe "structure" do
    subject { Family.new }

    it { should validate_presence_of(:fathers_first_name) }
    it { should validate_presence_of(:fathers_last_name) }
    it { should validate_presence_of(:mothers_first_name) }
    it { should validate_presence_of(:mothers_last_name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:household_income) }
    it { should validate_presence_of(:mothers_age_group) }
    it { should validate_presence_of(:family_type) }
    it { should validate_presence_of(:martial_status) }

    it { should have_one(:address) }
    it { should have_many(:children) }
  end

  describe "instance" do
    it "is considered invalid without a father's first name" do
      Family.make(:fathers_first_name => '').should_not be_valid
    end

    it "is considered invalid without a father's last name" do
      Family.make(:fathers_last_name => '').should_not be_valid
    end

    it "is considered invalid without a mother's first name" do
      Family.make(:mothers_first_name => '').should_not be_valid
    end

    it "is considered invalid without a mother's last name" do
      Family.make(:mothers_first_name => '').should_not be_valid
    end

    it "is considered invalid without an email" do
      Family.make(:email => '123123123').should_not be_valid
    end

    it "can be round tripped when valid" do
      lambda { Family.make! }.should change(Family, :count).by(1)
    end
  end
end
