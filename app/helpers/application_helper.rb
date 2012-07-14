# encoding: utf-8
module ApplicationHelper
	def nodata (argument)
		if argument.empty?
			return (raw "<span class='no-data'>#{t "details.absence"}</span>")
		else
			argument
		end
	end
	def nodatatext
		return raw "<span class='no-data'>#{t "details.absence"}</span>"
	end
	def pln (price)
		return number_to_currency(price, :unit => "zł", :precision => 2, :format => "%n %u", :separator => ",")
	end
end
