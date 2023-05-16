package dell.order_status;

import dell.order_status.PurchaseOrder.PurchaseOrderDetails;

/** Provides status information for an order. **/
@:jsonParse(json -> new dell.order_status.OrderStatus(json))
@:jsonStringify(orderStatus -> {purchaseOrderDetails: orderStatus.purchaseOrderDetails})
class OrderStatus implements Model {

	/** The purchase order details. **/
	@:constant var purchaseOrderDetails: List<PurchaseOrderDetails> = @byDefault new List();
}
