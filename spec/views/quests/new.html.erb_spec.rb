require 'rails_helper'

RSpec.describe "quests/new", type: :view do
  before(:each) do
    assign(:quest, Quest.new(
      :title => "MyString",
      :excerpt => "MyText"
    ))
  end

  it "renders new quest form" do
    render

    assert_select "form[action=?][method=?]", quests_path, "post" do

      assert_select "input#quest_title[name=?]", "quest[title]"

      assert_select "textarea#quest_excerpt[name=?]", "quest[excerpt]"
    end
  end
end
