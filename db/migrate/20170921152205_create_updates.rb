class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.integer :user_id
      t.timestamps
    end
  end
end
