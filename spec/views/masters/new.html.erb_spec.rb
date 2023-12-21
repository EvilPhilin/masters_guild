require 'rails_helper'

RSpec.describe "masters/new", type: :view do
  before(:each) do
    assign(:master, Master.new(
      name: "MyString",
      surname: "MyString",
      about_me: "MyText"
    ))
  end

  it "renders new master form" do
    render

    assert_select "form[action=?][method=?]", masters_path, "post" do

      assert_select "input[name=?]", "master[name]"

      assert_select "input[name=?]", "master[surname]"

      assert_select "textarea[name=?]", "master[about_me]"
    end
  end
end
