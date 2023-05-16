package dell.quote;

/** Represents a postal address. **/
@:jsonParse(json -> new dell.quote.Address(json))
@:jsonStringify(address -> {
	city: address.city,
	country: address.country,
	countryCode: address.countryCode,
	line1: address.line1,
	line2: address.line2,
	line3: address.line3,
	line4: address.line4,
	postalCode: address.postalCode,
	province: address.province,
	region: address.region,
	state: address.state
})
class Address implements Model {
	@:constant var city: String = @byDefault "";
	@:constant var country: String = @byDefault "";
	@:constant var countryCode: Int = @byDefault 0;
	@:constant var line1: String = @byDefault "";
	@:constant var line2: String = @byDefault "";
	@:constant var line3: String = @byDefault "";
	@:constant var line4: String = @byDefault "";
	@:constant var postalCode: String = @byDefault "";
	@:constant var province: String = @byDefault "";
	@:constant var region: String = @byDefault "";
	@:constant var state: String = @byDefault "";
}

/** Defines the data of an address. **/
typedef AddressData = {
	var ?city: String;
	var ?country: String;
	var ?countryCode: Int;
	var ?line1: String;
	var ?line2: String;
	var ?line3: String;
	var ?line4: String;
	var ?postalCode: String;
	var ?province: String;
	var ?region: String;
	var ?state: String;
}
