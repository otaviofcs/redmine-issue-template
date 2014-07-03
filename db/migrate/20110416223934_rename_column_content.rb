class RenameColumnContent< ActiveRecord::Migration
  def self.up
    rename_column :issue_templates, :content, :description
  end

  def self.down
    rename_column :issue_templates, :description, :content
  end
end
