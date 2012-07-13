class Treatment < ActiveRecord::Base
  attr_accessible :additional_info, :client_id, :color, :correction, :date, :price, :ttype
  belongs_to :client
end
