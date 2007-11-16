class License < ActiveRecord::Base
  belongs_to :company
  belongs_to :order
end
