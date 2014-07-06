class CreateFacultyMembers < ActiveRecord::Migration
  def change
    create_table :faculty_members do |t|

      t.timestamps
    end
  end
end
