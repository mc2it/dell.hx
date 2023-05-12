package dell.order_status;

import dell.order_status.DellOrder.DellOrderData;

/** Provides the details of a purchase order. **/
@:jsonParse(json -> new dell.order_status.PurchaseOrderDetails(json))
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
	@:constant var purchaseOrderStatus: String = @byDefault "";

	/** Creates a new Dell order from the specified JSON object. **/
	public static function fromJson(json: PurchaseOrderDetailsData) return new PurchaseOrderDetails({
		dellOrders: json.dellOrders != null ? json.dellOrders.map(DellOrder.fromJson) : [],
		purchaseOrderDate: json.purchaseOrderDate != null ? Tools.ofIsoString(json.purchaseOrderDate) : null,
		purchaseOrderNumber: json.purchaseOrderNumber ?? "",
		purchaseOrderStatus: json.purchaseOrderStatus ?? ""
	});
}

/** Defines the data of TODO. **/
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
