package dell.quote;

/** Represents a phone contact. **/
@:jsonParse(json -> new dell.quote.PhoneContact(json))
@:jsonStringify(contact -> {
	areaCode: contact.areaCode,
	countryCode: contact.countryCode,
	extension: contact.extension,
	mediaType: contact.mediaType,
	number: contact.number,
	number1: contact.number1,
	number2: contact.number2,
	phoneType: contact.phoneType
})
class PhoneContact implements Model {
	@:constant var areaCode: String = @byDefault "";
	@:constant var countryCode: String = @byDefault "";
	@:constant var extension: String = @byDefault "";
	@:constant var mediaType: String = @byDefault "";
	@:constant var number: String = @byDefault "";
	@:constant var number1: String = @byDefault "";
	@:constant var number2: String = @byDefault "";
	@:constant var phoneType: String = @byDefault "";
}
