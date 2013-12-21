require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :student_num => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_student_num[name=?]", "student[student_num]"
      assert_select "input#student_name[name=?]", "student[name]"
    end
  end
end
