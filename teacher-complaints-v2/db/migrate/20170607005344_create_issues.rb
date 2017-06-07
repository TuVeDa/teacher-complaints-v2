class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :category
      t.text :note

      t.timestamps
    end
  end
end
