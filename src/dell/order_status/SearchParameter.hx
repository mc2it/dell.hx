package dell.order_status;

/** Defines the allowed values for a search key. **/
enum abstract SearchKey(String) to String {
	var CountryCode = "country_code";
	var DellOrderNumbers = "order_numbers";
	var DellPurchaseIds = "dp_ids";
	var PurchaseOrderNumbers = "po_numbers";
}

/** Represents a search parameter. **/
@:jsonParse(json -> new dell.order_status.SearchParameter(json))
@:jsonStringify(searchParam -> {
	key: searchParam.key,
	values: searchParam.values
})
class SearchParameter implements Model {

	/** The search key. **/
	@:constant var key: SearchKey;

	/** The searched values. **/
	@:constant var values: List<String>;
}

/** Defines the allowed values for a wildcard search key. **/
enum abstract WildcardSearchKey(String) to String {
	var CountryCode = "country_code";
	var PurchaseOrderNumber = "po_number";
}

/** Represents a search parameter. **/
@:jsonParse(json -> new dell.order_status.WildcardSearchParameter(json))
@:jsonStringify(searchParam -> {
	key: searchParam.key,
	value: searchParam.value
})
class WildcardSearchParameter implements Model {

	/** The search key. **/
	@:constant var key: WildcardSearchKey;

	/** The searched value. **/
	@:constant var value: String;
}
