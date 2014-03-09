class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{ constraints { // apply constraints here
			} }

		name rootUrl: "/"(view:"/index")
		name error: "500"(view:'/error')

		name adminPanel: "/admin_panel"(view:"/admin_panel")
	}
}
