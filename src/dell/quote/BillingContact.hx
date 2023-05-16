package dell.quote;

import dell.quote.Address.AddressData;
import dell.quote.PhoneContact.PhoneContactData;

/** Represents a billing contact. **/
@:jsonParse(json -> dell.quote.BillingContact.fromJson(json))
@:jsonStringify(contact -> {
	address: contact.address,
	companyName: contact.companyName,
	customerNumber: contact.customerNumber,
	department: contact.department,
	emailAddress: contact.emailAddress,
	firstName: contact.firstName,
	lastName: contact.lastName,
	phoneContacts: contact.phoneContacts
})
class BillingContact implements Model {
	@:constant var address: Null<Address> = @byDefault null;
	@:constant var companyName: String = @byDefault "";
	@:constant var customerNumber: String = @byDefault "";
	@:constant var department: String = @byDefault "";
	@:constant var emailAddress: String = @byDefault "";
	@:constant var firstName: String = @byDefault "";
	@:constant var lastName: String = @byDefault "";
	@:constant var phoneContacts: List<PhoneContact> = @byDefault new List();

	/** Creates a new billing contact from the specified JSON object. **/
	public static function fromJson(json: BillingContactData) return new BillingContact({
		address: json.address != null ? new Address(json.address) : null,
		companyName: json.companyName,
		customerNumber: json.customerNumber,
		department: json.department,
		emailAddress: json.emailAddress,
		firstName: json.firstName,
		lastName: json.lastName,
		phoneContacts: json.phoneContacts != null ? json.phoneContacts.map(PhoneContact.new) : []
	});
}

/** Defines the data of a billing contact. **/
typedef BillingContactData = {
	var ?address: AddressData;
	var ?companyName: String;
	var ?customerNumber: String;
	var ?department: String;
	var ?emailAddress: String;
	var ?firstName: String;
	var ?lastName: String;
	var ?phoneContacts: Array<PhoneContactData>;
}
