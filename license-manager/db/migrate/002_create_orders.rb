class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.column :expiration_date, :date
      t.column :start_date, :date
      t.column :company_id, :integer, :null => false
    end
  end

  def self.down
    drop_table :orders
  end
end
