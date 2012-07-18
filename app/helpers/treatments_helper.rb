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
		return link_to (raw t "treatment.delete.button"),  destroy_treatment_path(treatment), :confirm => (t "treatment.delete.confirm"), :class => [:btn, "btn-danger"]
	end
    def treatment_correction (treatment)
        return (raw ((treatment.correction?) ? " <span class='label label-warning'>#{t 'treatment.correction.label'}</span>" : ""))
    end
    def treatment_old (treatment)
        return (raw ((treatment.old?) ? " <span class='label label-important'>#{t 'treatment.old'}</span>" : ""))
    end
    def treatment_young (treatment)
        return (raw ((treatment.young?) ? " <span class='label label-important'>#{t 'treatment.young'}</span>" : ""))
    end
    def treatments_button
    	return link_to (raw t "treatment.index.button"), treatments_path, :class => [:btn, "btn-primary"]
    end
    def treatment_labels(treatment)
    	return (raw (treatment_correction(treatment)+treatment_young(treatment)+treatment_old(treatment)))
    end
    def treatment_info_in_client (t)
		return ((t.ttype.to_s.empty?) ? "<span style='color: grey'>Nieznany rodzaj</span>" : t.ttype)+" &mdash; "+((t.color.to_s.empty?) ? "<span style='color: grey'>Nieznany kolor</span>" : t.color)+treatment_labels(t)
	end
end
