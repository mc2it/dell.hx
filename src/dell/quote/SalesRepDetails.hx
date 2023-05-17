package dell.quote;

/** Provides the details of a sales representative. **/
@:jsonParse(json -> new dell.quote.SalesRepDetails(json))
@:jsonStringify(representative -> {
	email: representative.email,
	name: representative.name,
	salesRepType: representative.salesRepType
})
class SalesRepDetails implements Model {
	@:constant var email: String = @byDefault "";
	@:constant var name: String = @byDefault "";
	@:constant var salesRepType: String = @byDefault "";
}
