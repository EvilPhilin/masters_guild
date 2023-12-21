require 'rails_helper'

RSpec.describe "masters/show", type: :view do
  before(:each) do
    assign(:master, Master.create!(
      name: "Name",
      surname: "Surname",
      about_me: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/MyText/)
  end
end
