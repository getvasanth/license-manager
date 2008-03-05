class CompaniesCompletion < ActiveRecord::Migration
  def self.up
    add_column :companies, :group, :string
    add_column :companies, :contact, :string
    add_column :companies, :country, :string
    add_column :companies, :phone, :string
    add_column :companies, :fax, :string
    add_column :companies, :email, :string
    add_column :companies, :status, :string
  end

  def self.down
    remove_column :companies, :group
    remove_column :companies, :contact
    remove_column :companies, :country
    remove_column :companies, :phone
    remove_column :companies, :fax
    remove_column :companies, :email
    remove_column :companies, :status
  end
end
