class Treatment < ActiveRecord::Base
  attr_accessible :additional_info, :client_id, :color, :correction, :date, :price, :ttype
  belongs_to :client
  def date_polish
  	return self[:date].strftime('%d-%m-%Y')
  end
  def young?
  	return (ActiveSupport::TimeZone['Warsaw'].parse(self.date.to_s) > 18.months.ago and ActiveSupport::TimeZone['Warsaw'].parse(self.date.to_s) < 16.months.ago)
  end
  def old?
  	return (ActiveSupport::TimeZone['Warsaw'].parse(self.date.to_s) > 30.months.ago and ActiveSupport::TimeZone['Warsaw'].parse(self.date.to_s) < 28.months.ago)
  end
end
