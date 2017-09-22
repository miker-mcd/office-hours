class RemoveStaffAddUserId < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :staff_id, :integer
    add_column :projects, :user_id, :integer
  end
end
