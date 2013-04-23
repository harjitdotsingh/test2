class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/Create"(controller:'homePage',action:"create")

		"/"(controller:'homePage',action:"create")
		"500"(view:'/error')
	}
}
