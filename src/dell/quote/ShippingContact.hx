package dell.quote;

/** Represents a shipping contact. **/
@:jsonParse(json -> dell.quote.ShippingContact.fromJson(json))
@:jsonStringify(contact -> {
	address: contact.address,
	companyName: contact.companyName,
	customerNumber: contact.customerNumber,
	digitalFulfillmentEmail: contact.digitalFulfillmentEmail,
	emailAddress: contact.emailAddress,
	firstName: contact.firstName,
	lastName: contact.lastName,
	phoneContacts: contact.phoneContacts
})
class ShippingContact implements Model {
	@:constant var address: Null<Address> = @byDefault null;
	@:constant var companyName: String = @byDefault "";
	@:constant var customerNumber: String = @byDefault "";
	@:constant var digitalFulfillmentEmail: String = @byDefault "";
	@:constant var emailAddress: String = @byDefault "";
	@:constant var firstName: String = @byDefault "";
	@:constant var lastName: String = @byDefault "";
	@:constant var phoneContacts: List<PhoneContact> = @byDefault new List();

	/** Creates a new shipping contact from the specified JSON object. **/
	public static function fromJson(json: ShippingContactData) return new ShippingContact({
		address: json.address != null ? new Address(json.address) : null,
		companyName: json.companyName,
		customerNumber: json.customerNumber,
		digitalFulfillmentEmail: json.digitalFulfillmentEmail,
		emailAddress: json.emailAddress,
		firstName: json.firstName,
		lastName: json.lastName,
		phoneContacts: json.phoneContacts != null ? json.phoneContacts.map(PhoneContact.new) : []
	});
}

/** Defines the data of a shipping contact. **/
typedef ShippingContactData = {
	var ?address: Address;
	var ?companyName: String;
	var ?customerNumber: String;
	var ?digitalFulfillmentEmail: String;
	var ?emailAddress: String;
	var ?firstName: String;
	var ?lastName: String;
	var ?phoneContacts: Array<PhoneContactData>;
}
