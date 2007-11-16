class LicenseOrderRelationship < ActiveRecord::Migration
  def self.up
    add_column :licenses, :order_id, :integer
  end

  def self.down
    remove_column :licenses, :order_id
  end
end
