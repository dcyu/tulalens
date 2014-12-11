require 'rails_helper'

RSpec.describe "responses/index", :type => :view do
  before(:each) do
    assign(:responses, [
      Response.create!(
        :text => "MyText",
        :question_id => 1,
        :survey_id => 2
      ),
      Response.create!(
        :text => "MyText",
        :question_id => 1,
        :survey_id => 2
      )
    ])
  end

  it "renders a list of responses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
