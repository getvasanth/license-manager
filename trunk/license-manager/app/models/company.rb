class Company < ActiveRecord::Base
  has_many :orders, :dependent => :destroy
  has_many :licenses, :dependent => :destroy
end
