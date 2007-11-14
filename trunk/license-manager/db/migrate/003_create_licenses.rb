class CreateLicenses < ActiveRecord::Migration
  def self.up
    create_table :licenses do |t|
      t.column :filename, :string
      t.column :comment, :string
      t.column :company_id, :integer, :null => false
    end
  end

  def self.down
    drop_table :licenses
  end
end
