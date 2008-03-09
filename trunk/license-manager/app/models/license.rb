class License < ActiveRecord::Base
  belongs_to :company
  belongs_to :order
  #has_many :flow
end
