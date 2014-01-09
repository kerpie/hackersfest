class Participant < ActiveRecord::Base

	validates :fb_id, uniqueness: true

	def message_to_show
		event_day = Date.new(2014, 1, 18)
		today = Date.today
		message = ""
		if(today == event_day)
			message = "Hola #{name} Hoy es el evento! no te lo pierdas!"
		elsif today < event_day
			message = "Falta poco para el evento #{name}, recuerda es el 18 de Enero! ;)"
		else
			message = "El evento ya ha terminado #{name}, no te pierdas el siguiente!"
		end
		message
	end

end