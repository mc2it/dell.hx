package dell.order_status;

/** Provides information about a product. **/
@:jsonParse(json -> dell.order_status.ProductInfo.fromJson(json))
@:jsonStringify(productInfo -> {
	description: productInfo.description,
	itemQuantity: Std.string(productInfo.itemQuantity),
	serviceTags: productInfo.serviceTags,
	skuNumber: productInfo.skuNumber
})
class ProductInfo implements Model {

	/** The SKU item description. **/
	@:constant var description: String = @byDefault "";

	/** The item quantity ordered. **/
	@:constant var itemQuantity: Int = @byDefault 0;

	/** The Dell service tag / serial number. **/
	@:constant var serviceTags: List<String> = @byDefault new List();

	/** The SKU number. **/
	@:constant var skuNumber: String = @byDefault "";

	/** Creates a new Dell order from the specified JSON object. **/
	public static function fromJson(json: ProductInfoData) return new ProductInfo({
		description: json.description ?? "",
		itemQuantity: Std.parseInt(json.itemQuantity ?? "0"),
		serviceTags: json.serviceTags ?? [],
		skuNumber: json.skuNumber ?? ""
	});
}

/** Defines the data of a product information. **/
typedef ProductInfoData = {

	/** The SKU item description. **/
	var ?description: String;

	/** The item quantity ordered. **/
	var ?itemQuantity: String;

	/** The Dell service tag / serial number. **/
	var ?serviceTags: Array<String>;

	/** The SKU number. **/
	var ?skuNumber: String;
}
