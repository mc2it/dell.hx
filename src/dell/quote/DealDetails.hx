package dell.quote;

/** Provides the details of a deal. **/
@:jsonParse(json -> dell.quote.DealDetails.fromJson(json))
@:jsonStringify(dealDetails -> {
	closeDate: dealDetails.closeDate != null ? DateTools.format(dealDetails.closeDate, "%F") : null,
	createdDate: dealDetails.createdDate != null ? DateTools.format(dealDetails.createdDate, "%F") : null,
	dealId: dealDetails.dealId,
	dealRegistrationExpiryDate: dealDetails.dealRegistrationExpiryDate != null ? DateTools.format(dealDetails.dealRegistrationExpiryDate, "%F") : null,
	name: dealDetails.name,
	nextStep: dealDetails.nextStep,
	probability: Std.string(dealDetails.probability),
	stageName: dealDetails.stageName
})
class DealDetails implements Model {
	@:constant var closeDate: Null<Date> = @byDefault null;
	@:constant var createdDate: Null<Date> = @byDefault null;
	@:constant var dealId: String = @byDefault "";
	@:constant var dealRegistrationExpiryDate: Null<Date> = @byDefault null;
	@:constant var name: String = @byDefault "";
	@:constant var nextStep: String = @byDefault "";
	@:constant var probability: Float = @byDefault 0;
	@:constant var stageName: String = @byDefault "";

	/** Creates new deal details from the specified JSON object. **/
	public static function fromJson(json: DealDetailsData) return new DealDetails({
		closeDate: json.closeDate != null ? Date.fromString(json.closeDate) : null,
		createdDate: json.createdDate != null ? Date.fromString(json.createdDate) : null,
		dealId: json.dealId,
		dealRegistrationExpiryDate: json.dealRegistrationExpiryDate != null ? Date.fromString(json.dealRegistrationExpiryDate) : null,
		name: json.name,
		nextStep: json.nextStep,
		probability: json.probability != null ? Std.parseFloat(json.probability) : 0,
		stageName: json.stageName
	});
}

/** Defines the data of deal details. **/
typedef DealDetailsData = {
	var ?closeDate: String;
	var ?createdDate: String;
	var ?dealId: String;
	var ?dealRegistrationExpiryDate: String;
	var ?name: String;
	var ?nextStep: String;
	var ?probability: String;
	var ?stageName: String;
}
