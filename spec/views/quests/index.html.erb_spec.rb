require 'rails_helper'

RSpec.describe "quests/index", type: :view do
  before(:each) do
    assign(:quests, [
      Quest.create!(
        :title => "Title",
        :excerpt => "MyText"
      ),
      Quest.create!(
        :title => "Title",
        :excerpt => "MyText"
      )
    ])
  end

  it "renders a list of quests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
