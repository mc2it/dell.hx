package dell.quote;

/** Represents an estimated date range. **/
@:jsonParse(json -> dell.quote.EstimatedDateRange.fromJson(json))
@:jsonStringify(range -> {
	max: range.max != null ? dell.Tools.toIsoString(range.max) : null,
	min: range.min != null ? dell.Tools.toIsoString(range.min) : null
})
class EstimatedDateRange implements Model {
	@:constant var max: Null<Date> = @byDefault null;
	@:constant var min: Null<Date> = @byDefault null;

	/** Creates a new estimated date range from the specified JSON object. **/
	public static function fromJson(json: EstimatedDateRangeData) return new EstimatedDateRange({
		max: json.max != null ? Tools.ofIsoString(json.max) : null,
		min: json.min != null ? Tools.ofIsoString(json.min) : null
	});
}

/** Defines the data of an estimated date range. **/
typedef EstimatedDateRangeData = {
	var ?max: String;
	var ?min: String;
}
