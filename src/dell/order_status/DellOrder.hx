package dell.order_status;

/** Represents a Dell order. **/
@:jsonParse(json -> new dell.order_status.DellOrder(json))
@:jsonStringify(dellOrder -> {
	actualShipmentDate: dellOrder.actualShipmentDate,
	dellPurchaseId: dellOrder.dellPurchaseId,
	estimatedDeliveryDate: dellOrder.estimatedDeliveryDate,
	estimatedShipmentDate: dellOrder.estimatedShipmentDate,
	invoiceDate: dellOrder.invoiceDate,
	invoiceNumber: dellOrder.invoiceNumber,
	orderNumber: dellOrder.orderNumber,
	orderStatus: dellOrder.orderStatus,
	productInfo: dellOrder.productInfo,
	purchaseOrderLines: dellOrder.purchaseOrderLines,
	revisedDeliveryDate: dellOrder.revisedDeliveryDate,
	revisedShipmentDate: dellOrder.revisedShipmentDate,
	shipToInformation: dellOrder.shipToInformation,
	statusDateTime: dellOrder.statusDateTime,
	trackingInformation: dellOrder.trackingInformation
})
class DellOrder implements Model {

	/** The date the item actually shipped. **/
	@:constant var actualShipmentDate: Null<Date> = @byDefault null;

	/** The Dell purchase identifiers. **/
	@:constant var dellPurchaseId: String = @byDefault "";

	/** The estimated delivery date of the order. **/
	@:constant var estimatedDeliveryDate: Null<Date> = @byDefault null;

	/** The estimated shipment date of the order. **/
	@:constant var estimatedShipmentDate: Null<Date> = @byDefault null;

	/** The creation date of the Dell invoice. **/
	@:constant var invoiceDate: Null<Date> = @byDefault null;

	/** The Dell invoice number. **/
	@:constant var invoiceNumber: String = @byDefault "";

	/** The Dell's internal order number. **/
	@:constant var orderNumber: String = @byDefault "";

	/** The current status of the Dell order. **/
	@:constant var orderStatus: String = @byDefault "";

	/** The product information. **/
	@:constant var productInfo: List<ProductInfo> = @byDefault new List();

	/** The purchase order lines. **/
	@:constant var purchaseOrderLines: List<PurchaseOrderLine> = @byDefault new List();

	/** The revised delivery date of the order. **/
	@:constant var revisedDeliveryDate: Null<Date> = @byDefault null;

	/** The revised shipment date of the order. **/
	@:constant var revisedShipmentDate: Null<Date> = @byDefault null;

	/** The shipment information. **/
	@:constant var shipToInformation: Null<ShipToInformation> = @byDefault null;

	/** The date for the current status. **/
	@:constant var statusDateTime: Null<Date> = @byDefault null;

	/** The tracking information. **/
	@:constant var trackingInformation: List<TrackingInformation> = @byDefault new List();
}
