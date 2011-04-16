class AddSubject < ActiveRecord::Migration
  def self.up
    add_column :issue_templates, :subject, :text,  :default => nil, :null => true
  end

  def self.down
    remove_column :issue_templates, :subject
  end
end
