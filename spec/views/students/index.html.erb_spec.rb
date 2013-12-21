require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :student_num => "Student Num",
        :name => "Name"
      ),
      stub_model(Student,
        :student_num => "Student Num",
        :name => "Name"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Num".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
