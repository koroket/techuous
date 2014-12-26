class RenameNameToUsername < ActiveRecord::Migration
  def self.up
    rename_column :users, :name, :username
  end
end