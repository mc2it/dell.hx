package dell.order_status;

/** Provides information about a product. **/
@:jsonParse(json -> new dell.order_status.ProductInfo(json))
@:jsonStringify(productInfo -> {
	description: productInfo.description,
	itemQuantity: productInfo.itemQuantity,
	serviceTags: productInfo.serviceTags,
	skuNumber: productInfo.skuNumber
})
class ProductInfo implements Model {

	/** The SKU item description. **/
	@:constant var description: String = @byDefault "";

	/** The item quantity ordered. **/
	@:constant var itemQuantity: String = @byDefault "";

	/** The Dell service tag / serial number. **/
	@:constant var serviceTags: List<String> = @byDefault new List();

	/** The SKU number. **/
	@:constant var skuNumber: String = @byDefault "";
}

/** Defines the data of a product information. **/
typedef ProductInfoData = {

	/** The SKU item description. **/
	var ?description: String;

	/** The item quantity ordered. **/
	var ?itemQuantity: String;

	/** The Dell service tag / serial number. **/
	var ?serviceTags: List<String>;

	/** The SKU number. **/
	var ?skuNumber: String;
}
