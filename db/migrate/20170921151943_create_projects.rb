class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string  :title
      t.string  :description
      t.integer :subject
      t.integer :staff_id
      t.timestamps
    end
  end
end
