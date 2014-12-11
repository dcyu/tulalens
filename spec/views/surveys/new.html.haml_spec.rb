require 'rails_helper'

RSpec.describe "surveys/new", :type => :view do
  before(:each) do
    assign(:survey, Survey.new(
      :facility_id => 1
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "input#survey_facility_id[name=?]", "survey[facility_id]"
    end
  end
end
