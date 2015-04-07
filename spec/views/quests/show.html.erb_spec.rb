require 'rails_helper'

RSpec.describe "quests/show", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :title => "Title",
      :excerpt => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
