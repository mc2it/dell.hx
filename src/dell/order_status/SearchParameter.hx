package dell.order_status;

/** Defines the allowed values for a search key. **/
enum abstract SearchKey(String) to String {
	var CountryCode = "country_code";
	var DellOrderNumbers = "order_numbers";
	var DellPurchaseIds = "dp_ids";
	var PurchaseOrderNumbers = "po_numbers";
}

/** Represents a search parameter. **/
@:jsonStringify(searchParam -> {
	key: searchParam.key,
	values: searchParam.values
})
class SearchParameter implements Model {

	/** The search key. **/
	@:editable var key: SearchKey;

	/** The searched values. **/
	@:editable var values: List<String>;
}

/** Defines the allowed values for a wildcard search key. **/
enum abstract WildcardSearchKey(String) to String {
	var CountryCode = "country_code";
	var PurchaseOrderNumber = "po_number";
}

/** Represents a wildcard search parameter. **/
@:jsonStringify(searchParam -> {
	key: searchParam.key,
	value: searchParam.value
})
class WildcardSearchParameter implements Model {

	/** The search key. **/
	@:editable var key: WildcardSearchKey;

	/** The searched value. **/
	@:editable var value: String;
}
