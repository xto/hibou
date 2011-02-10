require 'spec_helper'

describe Family do
  subject { Family.new }

  it { should validate_presence_of(:fathers_first_name) }
  it { should validate_presence_of(:fathers_last_name) }
  it { should validate_presence_of(:mothers_first_name) }
  it { should validate_presence_of(:mothers_last_name) }
  it { should validate_presence_of(:address) }
  

  it { should have_one(:address) }
  it { should have_many(:children) }
end
