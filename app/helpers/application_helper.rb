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
end
