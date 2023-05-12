package dell.order_status;

/** Represents a line of a purchase order. **/
@:jsonParse(json -> new dell.order_status.PurchaseOrderLine(json))
@:jsonStringify(poLine -> {
	buyerPartNumber: poLine.buyerPartNumber,
	dellPartNumber: poLine.dellPartNumber,
	description: poLine.description,
	lineNumber: poLine.lineNumber,
	lineStatus: poLine.lineStatus,
	quantityOrdered: poLine.quantityOrdered,
	unitPrice: poLine.unitPrice,
})
class PurchaseOrderLine implements Model {

	/** The partner's internal part number. **/
	@:constant var buyerPartNumber: String = @byDefault "";

	/** The Dell's part number. **/
	@:constant var dellPartNumber: String = @byDefault "";

	/** The product description per line item. **/
	@:constant var description: String = @byDefault "";

	/** The purchase order line number. **/
	@:constant var lineNumber: String = @byDefault "";

	/** The current status of the purchase order line number. **/
	@:constant var lineStatus: String = @byDefault "";

	/** The line quantity ordered. **/
	@:constant var quantityOrdered: Int = @byDefault 0;

	/** The unit price for the product line item. **/
	@:constant var unitPrice: Float = @byDefault 0;
}
