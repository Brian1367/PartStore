require 'rails_helper'
require 'spec_helper'

RSpec.describe Part do


    it { should have_valid(:OE_number).when("003 458 148 96") }
    it { should_not have_valid(:OE_number).when(nil, "") }

    it { should have_valid(:name).when("camshaft") }
    it { should_not have_valid(:name).when(nil, "") }

    it { should have_valid(:line_code).when("BMW") }
    it { should_not have_valid(:line_code).when(nil, "") }

    it { should have_valid(:price).when(299) }
    it { should have_valid(:price).when(500) }
    it { should have_valid(:price).when(5500) }
    it { should_not have_valid(:price).when(-1) }
    it { should_not have_valid(:price).when(5900000000) }
    it { should_not have_valid(:price).when(nil) }

    it { should have_valid(:UPC).when(14528844994) }
    it { should_not have_valid(:UPC).when(nil, "") }
  end
