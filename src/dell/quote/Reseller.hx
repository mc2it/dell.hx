package dell.quote;

import dell.quote.Address.AddressData;
import dell.quote.PhoneContact.PhoneContactData;

/** Represents a reseller. **/
@:jsonParse(json -> new dell.quote.Reseller(json))
@:jsonStringify(reseller -> {
	address: reseller.address,
	contactEmail: reseller.contactEmail,
	contactName: reseller.contactName,
	contactPhone: reseller.contactPhone,
	customerName: reseller.customerName,
	customerNumber: reseller.customerNumber
})
class Reseller implements Model {
	@:constant var address: Null<Address> = @byDefault null;
	@:constant var contactEmail: String = @byDefault "";
	@:constant var contactName: String = @byDefault "";
	@:constant var contactPhone: Null<PhoneContact> = @byDefault null;
	@:constant var customerName: String = @byDefault "";
	@:constant var customerNumber: String = @byDefault "";
}

/** Defines the data of a phone contact. **/
typedef ResellerData = {
	var ?address: AddressData;
	var ?contactEmail: String;
	var ?contactName: String;
	var ?contactPhone: PhoneContactData;
	var ?customerName: String;
	var ?customerNumber: String;
}
