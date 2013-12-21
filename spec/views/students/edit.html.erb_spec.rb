require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :student_num => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_student_num[name=?]", "student[student_num]"
      assert_select "input#student_name[name=?]", "student[name]"
    end
  end
end
