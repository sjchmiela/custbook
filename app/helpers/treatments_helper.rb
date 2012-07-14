module TreatmentsHelper
	def treatment_create_button
		return link_to (raw t "treatment.create.button"), new_treatment_path, :class => [:btn, "btn-success"]
	end
	def treatment_show_button (treatment)
		return link_to (raw t "treatment.show.button"), treatment, :class => [:btn, "btn-primary"]
	end
	def treatment_edit_button (treatment)
		return link_to (raw t "treatment.edit.button"), edit_treatment_path(treatment), :class => [:btn, "btn-info"]
	end
	def treatment_destroy_button (treatment)
		return link_to (raw t "treatment.delete.button"), treatment, :confirm => (raw t "treatment.delete.confirm"), :class => [:btn, "btn-danger"], :method => :delete
	end
	def treatment_info_in_client (t)
		return ((t.ttype.empty?) ? "<span style='color: grey'>Nieznany rodzaj</span>" : t.ttype)+" &mdash; "+((t.color.empty?) ? "<span style='color: grey'>Nieznany kolor</span>" : t.color)+((t.correction) ? " <span class='label label-warning'>#{t 'treatment.correction'}</span>" : "")
	end
end
