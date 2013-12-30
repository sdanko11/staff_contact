class AddDescription < ActiveRecord::Migration
  def up
    add_column :contacts, :description, :string, null:false
  end
  def down
    remove_column :contacts, :description
  end
end
