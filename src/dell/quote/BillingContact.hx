package dell.quote;

/** Represents a billing contact. **/
@:jsonParse(json -> new dell.quote.BillingContact(json))
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
}
