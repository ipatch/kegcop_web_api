Kegcop.LeadRoute = Ember.Route.extend

	model: (params) -> @csv_file.find 'csv_file', params.id