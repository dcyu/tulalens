require 'rails_helper'

RSpec.describe "responses/edit", :type => :view do
  before(:each) do
    @response = assign(:response, Response.create!(
      :text => "MyText",
      :question_id => 1,
      :survey_id => 1
    ))
  end

  it "renders the edit response form" do
    render

    assert_select "form[action=?][method=?]", response_path(@response), "post" do

      assert_select "textarea#response_text[name=?]", "response[text]"

      assert_select "input#response_question_id[name=?]", "response[question_id]"

      assert_select "input#response_survey_id[name=?]", "response[survey_id]"
    end
  end
end
