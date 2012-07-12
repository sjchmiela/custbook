class Treatment < ActiveRecord::Base
  attr_accessible :additional_info, :client_id, :color, :correction, :date, :price, :type
end
