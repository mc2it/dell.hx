package dell.quote;

/** Represents a stock keeping unit. **/
@:jsonParse(json -> new dell.quote.Sku(json))
@:jsonStringify(sku -> {
	description: sku.description,
	ecoFee: sku.ecoFee,
	isHardwareMaintenaceSku: sku.isHardwareMaintenaceSku,
	isHardwareSku: sku.isHardwareSku,
	isServiceSku: sku.isServiceSku,
	isSoftwareMaintenaceSku: sku.isSoftwareMaintenaceSku,
	isSoftwareSku: sku.isSoftwareSku,
	isTiedSku: sku.isTiedSku,
	lineId: sku.lineId,
	lineNumber: sku.lineNumber,
	lineOfBusiness: sku.lineOfBusiness,
	listPrice: sku.listPrice,
	parentItemId: sku.parentItemId,
	productCategory: sku.productCategory,
	quantity: sku.quantity,
	salesPrice: sku.salesPrice,
	skuNumber: sku.skuNumber,
	unitListPrice: sku.unitListPrice,
	unitSalesPrice: sku.unitSalesPrice
})
class Sku implements Model {

	@:constant var description: String = @byDefault "";
	@:constant var ecoFee: Float = @byDefault 0;
	@:constant var isHardwareMaintenaceSku: Bool = @byDefault false;
	@:constant var isHardwareSku: Bool = @byDefault false;
	@:constant var isServiceSku: Bool = @byDefault false;
	@:constant var isSoftwareMaintenaceSku: Bool = @byDefault false;
	@:constant var isSoftwareSku: Bool = @byDefault false;
	@:constant var isTiedSku: Bool = @byDefault false;
	@:constant var lineId: String = @byDefault "";
	@:constant var lineNumber: String = @byDefault "";
	@:constant var lineOfBusiness: String = @byDefault "";
	@:constant var listPrice: Float = @byDefault 0;
	@:constant var parentItemId: String = @byDefault "";
	@:constant var productCategory: String = @byDefault "";
	@:constant var quantity: Int = @byDefault 0;
	@:constant var salesPrice: Float = @byDefault 0;
	@:constant var skuNumber: String = @byDefault "";
	@:constant var unitListPrice: Float = @byDefault 0;
	@:constant var unitSalesPrice: Float = @byDefault 0;
}
