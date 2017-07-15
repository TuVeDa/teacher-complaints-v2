class AddContactToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :contact, :boolean
  end
end
