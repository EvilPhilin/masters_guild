require 'rails_helper'

RSpec.describe "masters/edit", type: :view do
  let(:master) {
    Master.create!(
      name: "MyString",
      surname: "MyString",
      about_me: "MyText"
    )
  }

  before(:each) do
    assign(:master, master)
  end

  it "renders the edit master form" do
    render

    assert_select "form[action=?][method=?]", master_path(master), "post" do

      assert_select "input[name=?]", "master[name]"

      assert_select "input[name=?]", "master[surname]"

      assert_select "textarea[name=?]", "master[about_me]"
    end
  end
end
