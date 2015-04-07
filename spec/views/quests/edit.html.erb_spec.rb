require 'rails_helper'

RSpec.describe "quests/edit", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :title => "MyString",
      :excerpt => "MyText"
    ))
  end

  it "renders the edit quest form" do
    render

    assert_select "form[action=?][method=?]", quest_path(@quest), "post" do

      assert_select "input#quest_title[name=?]", "quest[title]"

      assert_select "textarea#quest_excerpt[name=?]", "quest[excerpt]"
    end
  end
end
