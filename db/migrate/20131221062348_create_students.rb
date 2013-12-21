class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_num
      t.string :name

      t.timestamps
    end
  end
end
