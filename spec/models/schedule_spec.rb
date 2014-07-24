
require 'spec_helper'

describe Schedule do

  let(:user) { FactoryGirl.create(:user) }
  before do
    @schedule = user.schedules.build(class_date: DateTime.now,
                                     class_time: DateTime.now,
                                     class_duration: 1,
                                     student: "Example Student",
                                     class_type: "Private")
  end

  subject { @schedule }

  it { should respond_to(:class_date) }
  it { should respond_to(:class_time) }
  it { should respond_to(:class_duration) }
  it { should respond_to(:student) }
  it { should respond_to(:class_type) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @schedule.user_id = nil }
    it { should_not be_valid }
  end

end