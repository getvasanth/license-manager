class OrdersCompletion < ActiveRecord::Migration
  def self.up
    add_column :orders, :project, :string
    add_column :orders, :buyer, :string
    add_column :orders, :receiveDate, :date
    add_column :orders, :product, :string
    add_column :orders, :version, :string
    add_column :orders, :type, :string
    add_column :orders, :package, :string
    add_column :orders, :extension, :string
    add_column :orders, :technology, :string
    add_column :orders, :license_type, :string
    add_column :orders, :license_number, :string
    add_column :orders, :license_management, :string
    add_column :orders, :comment, :string
  end

  def self.down
    remove_column :orders, :project
    remove_column :orders, :buyer
    remove_column :orders, :receiveDate
    remove_column :orders, :product
    remove_column :orders, :version
    remove_column :orders, :type
    remove_column :orders, :package
    remove_column :orders, :extension
    remove_column :orders, :technology
    remove_column :orders, :license_type
    remove_column :orders, :license_number
    remove_column :orders, :license_management
    remove_column :orders, :comment
  end
end
