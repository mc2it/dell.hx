package dell.quote;

/** Represents an end user. **/
@:jsonParse(json -> new dell.quote.EndUser(json))
@:jsonStringify(endUser -> {
	address: endUser.address,
	companyName: endUser.companyName,
	customerNumber: endUser.customerNumber,
	department: endUser.department,
	digitalFulfillmentEmail: endUser.digitalFulfillmentEmail,
	emailAddress: endUser.emailAddress,
	fax: endUser.fax,
	firstName: endUser.firstName,
	lastName: endUser.lastName,
	middleName: endUser.middleName,
	phoneContacts: endUser.phoneContacts,
	warrantyEmail: endUser.warrantyEmail
})
class EndUser implements Model {
	@:constant var address: Null<Address> = @byDefault null;
	@:constant var companyName: String = @byDefault "";
	@:constant var customerNumber: String = @byDefault "";
	@:constant var department: String = @byDefault "";
	@:constant var digitalFulfillmentEmail: String = @byDefault "";
	@:constant var emailAddress: String = @byDefault "";
	@:constant var fax: Null<PhoneContact> = @byDefault null;
	@:constant var firstName: String = @byDefault "";
	@:constant var lastName: String = @byDefault "";
	@:constant var middleName: String = @byDefault "";
	@:constant var phoneContacts: List<PhoneContact> = @byDefault new List();
	@:constant var warrantyEmail: String = @byDefault "";
}
