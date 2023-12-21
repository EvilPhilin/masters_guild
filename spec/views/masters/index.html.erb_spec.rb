require 'rails_helper'

RSpec.describe "masters/index", type: :view do
  before(:each) do
    assign(:masters, [
      Master.create!(
        name: "Name",
        surname: "Surname",
        about_me: "MyText"
      ),
      Master.create!(
        name: "Name",
        surname: "Surname",
        about_me: "MyText"
      )
    ])
  end

  it "renders a list of masters" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Surname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
