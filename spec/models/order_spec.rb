require 'spec_helper'

describe Order do
  it { should have_valid(:year).when(1999)}
  it {should_not have_valid(:year).when(nil, "", 1700, 3000)}

  it { should have_valid(:make).when("Toyota")}
  it { should_not have_valid(:make).when(nil, "")}

  it { should have_valid(:model).when("Rav-4")}
  it { should_not have_valid(:model).when( nil, "")}
end
