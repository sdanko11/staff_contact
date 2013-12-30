class MakeFieldsRequired < ActiveRecord::Migration
  def up
    change_column :contacts, :email_address, :string, null:false
    change_column :contacts, :subject, :string, null:false
    change_column :contacts, :description, :string, null:false
    change_column :contacts, :first_name, :string, null:false
    change_column :contacts, :last_name, :string, null:false
  end
  def down
    change_column :contacts, :email_address, :string, null:false
    change_column :contacts, :subject, :string, null:false
    change_column :contacts, :description, :string, null:false
    change_column :contacts, :first_name, :string, null:false
    change_column :contacts, :last_name, :string, null:false

  end
end

  # create_table "contacts", force: true do |t|
  #   t.string   "email_address", null: false
  #   t.string   "subject",       null: false
  #   t.string   "description",   null: false
  #   t.string   "first_name",    null: false
  #   t.string   "last_name",     null: false
  #   t.datetime "created_at"
  #   t.datetime "updated_at"