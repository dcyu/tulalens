require 'rails_helper'

RSpec.describe "surveys/show", :type => :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :facility_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
