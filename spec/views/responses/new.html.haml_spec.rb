require 'rails_helper'

RSpec.describe "responses/new", :type => :view do
  before(:each) do
    assign(:response, Response.new(
      :text => "MyText",
      :question_id => 1,
      :survey_id => 1
    ))
  end

  it "renders new response form" do
    render

    assert_select "form[action=?][method=?]", responses_path, "post" do

      assert_select "textarea#response_text[name=?]", "response[text]"

      assert_select "input#response_question_id[name=?]", "response[question_id]"

      assert_select "input#response_survey_id[name=?]", "response[survey_id]"
    end
  end
end
