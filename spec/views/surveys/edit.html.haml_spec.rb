require 'rails_helper'

RSpec.describe "surveys/edit", :type => :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :facility_id => 1
    ))
  end

  it "renders the edit survey form" do
    render

    assert_select "form[action=?][method=?]", survey_path(@survey), "post" do

      assert_select "input#survey_facility_id[name=?]", "survey[facility_id]"
    end
  end
end
