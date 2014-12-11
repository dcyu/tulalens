require 'rails_helper'

RSpec.describe "surveys/index", :type => :view do
  before(:each) do
    assign(:surveys, [
      Survey.create!(
        :facility_id => 1
      ),
      Survey.create!(
        :facility_id => 1
      )
    ])
  end

  it "renders a list of surveys" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
