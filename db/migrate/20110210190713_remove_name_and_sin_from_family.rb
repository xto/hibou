class RemoveNameAndSinFromFamily < ActiveRecord::Migration
  def self.up
    remove_column :families, :sin
    remove_column :families, :name
  end

  def self.down
    add_column :families, :sin, :string
    add_column :families, :name, :string
  end
end
