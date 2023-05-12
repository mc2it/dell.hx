package dell.order_status;

/** Provides shipment information. **/
@:jsonParse(json -> new dell.order_status.ShipToInformation(json))
@:jsonStringify(shipToInfo -> {
	city: shipToInfo.city,
	companyName: shipToInfo.companyName,
	contactAddress1: shipToInfo.contactAddress1,
	contactAddress2: shipToInfo.contactAddress2,
	contactName: shipToInfo.contactName,
	country: shipToInfo.country,
	postalCode: shipToInfo.postalCode,
	stateProvince: shipToInfo.stateProvince,
})
class ShipToInformation implements Model {

	/** The city. **/
	@:constant var city: String = @byDefault "";

	/** The company name. **/
	@:constant var companyName: String = @byDefault "";

	/** The first address line. **/
	@:constant var contactAddress1: String = @byDefault "";

	/** The second address line. **/
	@:constant var contactAddress2: String = @byDefault "";

	/** The contact name. **/
	@:constant var contactName: String = @byDefault "";

	/** The country. **/
	@:constant var country: String = @byDefault "";

	/** The postal code. **/
	@:constant var postalCode: String = @byDefault "";

	/** The state or province. **/
	@:constant var stateProvince: String = @byDefault "";
}

/** Defines the data of a shipment information. **/
typedef ShipToInformationData = {

	/** The city. **/
	var ?city: String;

	/** The company name. **/
	var ?companyName: String;

	/** The first address line. **/
	var ?contactAddress1: String;

	/** The second address line. **/
	var ?contactAddress2: String;

	/** The contact name. **/
	var ?contactName: String;

	/** The country. **/
	var ?country: String;

	/** The postal code. **/
	var ?postalCode: String;

	/** The state or province. **/
	var ?stateProvince: String;
}
