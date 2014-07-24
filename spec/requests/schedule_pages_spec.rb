require 'spec_helper'

describe "Schedule pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "schedule creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a schedule" do
        expect { click_button "Create" }.not_to change(Schedule, :count)
      end

      describe "error messages" do
        before { click_button "Create" }
        it { should have_content('error') }
      end

    end

    describe "with valid information" do

      before {  fill_in 'class_date', with: "10/02/2014" }
      before {  fill_in 'class_time', with: "12:00 PM" }
      before {  fill_in 'class_duration', with: "1" }
      before {  fill_in 'student', with: "Testing" }
      before {  fill_in 'class_type', with: "Demo" }


      it "should create a schedule" do
        it { expect { click_button "Create" }.to change(Schedule, :count).by(1) }
      end
    end

  end

end
