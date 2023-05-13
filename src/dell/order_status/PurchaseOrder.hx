package dell.order_status;

import dell.order_status.DellOrder.DellOrderData;

/** Provides the details of a purchase order. **/
@:jsonParse(json -> new dell.order_status.PurchaseOrder.PurchaseOrderDetails(json))
@:jsonStringify(poDetails -> {
	dellOrders: poDetails.dellOrders,
	purchaseOrderDate: poDetails.purchaseOrderDate != null ? dell.Tools.toIsoString(poDetails.purchaseOrderDate) : null,
	purchaseOrderNumber: poDetails.purchaseOrderNumber,
	purchaseOrderStatus: poDetails.purchaseOrderStatus
})
class PurchaseOrderDetails implements Model {

	/** The Dell orders. **/
	@:constant var dellOrders: List<DellOrder> = @byDefault new List();

	/** The date the purchase order was submitted. **/
	@:constant var purchaseOrderDate: Null<Date> = @byDefault null;

	/** The purchase order number for the purchasing entity. **/
	@:constant var purchaseOrderNumber: String = @byDefault "";

	/** The current purchase order status. **/
	@:constant var purchaseOrderStatus: PurchaseOrderStatus = @byDefault "";

	/** Creates a new Dell order from the specified JSON object. **/
	public static function fromJson(json: PurchaseOrderDetailsData) return new PurchaseOrderDetails({
		dellOrders: json.dellOrders != null ? json.dellOrders.map(DellOrder.fromJson) : [],
		purchaseOrderDate: json.purchaseOrderDate != null ? Tools.ofIsoString(json.purchaseOrderDate) : null,
		purchaseOrderNumber: json.purchaseOrderNumber ?? "",
		purchaseOrderStatus: json.purchaseOrderStatus ?? ""
	});
}

/** Defines the status of a purchase order. **/
enum abstract PurchaseOrderStatus(String) from String to String {

	/** The order has been delivered. **/
	var Delivered;
}

/** Defines the data of purchase order details. **/
typedef PurchaseOrderDetailsData = {

	/** The Dell orders. **/
	var ?dellOrders: Array<DellOrderData>;

	/** The date the purchase order was submitted. **/
	var ?purchaseOrderDate: String;

	/** The purchase order number for the purchasing entity. **/
	var ?purchaseOrderNumber: String;

	/** The current purchase order status. **/
	var ?purchaseOrderStatus: String;
}

/** Represents a line of a purchase order. **/
@:jsonParse(json -> new dell.order_status.PurchaseOrder.PurchaseOrderLine(json))
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

/** Defines the data of a purchase order line. **/
typedef PurchaseOrderLineData = {

	/** The partner's internal part number. **/
	var ?buyerPartNumber: String;

	/** The Dell's part number. **/
	var ?dellPartNumber: String;

	/** The product description per line item. **/
	var ?description: String;

	/** The purchase order line number. **/
	var ?lineNumber: String;

	/** The current status of the purchase order line number. **/
	var ?lineStatus: String;

	/** The line quantity ordered. **/
	var ?quantityOrdered: Int;

	/** The unit price for the product line item. **/
	var ?unitPrice: Float;
}
