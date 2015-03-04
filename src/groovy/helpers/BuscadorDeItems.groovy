package helpers

class BuscadorDeItems{
	static final urlML="https://api.mercadolibre.com/sites/MLA/search";
/*	def buscarItems(String busqueda){
		when:"list with  application/json accept"
		get("$urlML") {
			headers['Content-Type'] = 'application/json'
			headers['Accept']       = 'application/json'
		}

		then:
		200 == response.status
		'application/json' == response.contentType
		def json = JSON.parse response.text
		2 == json.size()
		"AA" == json[0].code
		"An AA thing" == json[0].description

		// assert localization of the message
		"List of thing resources" == responseHeader('X-hedtech-message')

		//check pagination headers
		"2" == responseHeader('X-hedtech-totalCount')
		null != responseHeader('X-hedtech-pageOffset')
		null != responseHeader('X-hedtech-pageMaxSize')
		json[0]._href?.contains('things')
		null == json[0].numParts
		null == json[0].sha1
	}
*/}
