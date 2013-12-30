class RemoveDescription < ActiveRecord::Migration
  def up
    remove_column :contacts, :description
  end
  def down
    add_column :contacts, :description, :string, null:false
  end
end
