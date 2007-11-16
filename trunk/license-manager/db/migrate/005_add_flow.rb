class AddFlow < ActiveRecord::Migration
  def self.up
    add_column :orders, :flow, :string
    add_column :licenses, :flow, :string
  end

  def self.down
    remove_column :orders, :flow
    remove_column :licenses, :flow
  end
end
