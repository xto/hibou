class AddFamilyToChild < ActiveRecord::Migration
  def self.up
    add_column :children, :family_id, :integer
  end

  def self.down
    remove_column :children, :family_id
  end
end
