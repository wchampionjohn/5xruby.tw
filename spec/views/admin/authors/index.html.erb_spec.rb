require 'spec_helper'

describe "admin/authors/index" do
  before(:each) do
    assign(:admin_authors, [
      stub_model(Admin::Author,
        :name => "Name"
      ),
      stub_model(Admin::Author,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
