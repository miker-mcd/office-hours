class AddStudentIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :student_id, :integer, index: true
  end
end
