require 'rails_helper'

RSpec.describe "responses/show", :type => :view do
  before(:each) do
    @response = assign(:response, Response.create!(
      :text => "MyText",
      :question_id => 1,
      :survey_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
