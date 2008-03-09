class LicensesCompletion < ActiveRecord::Migration
  def self.up
    add_column :licenses, :send_date, :date
    add_column :licenses, :host_id, :string
  end

  def self.down
    remove_column :licenses, :send_date
    remove_column :licenses, :host_id
  end
end
