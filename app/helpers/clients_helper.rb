module ClientsHelper
	def client_create_button
		return link_to (raw t "client.create.button"), new_client_path, :class => [:btn, "btn-success"]
	end
	def client_show_button (client)
		return link_to (raw t "client.show.button"), client, :class => [:btn, "btn-primary"]
	end
	def client_edit_button (client)
		return link_to (raw t "client.edit.button"), edit_client_path(client), :class => [:btn, "btn-info"]
	end
	def client_destroy_button (client)
		return link_to (raw t "client.delete.button"), destroy_client_path(client), :confirm => (t "client.delete.confirm"), :class => [:btn, "btn-danger"]
	end
	def clients_button
		return link_to (raw t "client.index.button"), clients_path, :class => [:btn, "btn-primary"]
	end
end