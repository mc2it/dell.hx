package dell.order_status;

import dell.order_status.TrackingInformation.TrackingInformationData;
import dell.order_status.ShipToInformation.ShipToInformationData;
import dell.order_status.PurchaseOrderLine.PurchaseOrderLineData;
import dell.order_status.ProductInfo.ProductInfoData;

/** Represents a Dell order. **/
@:jsonParse(json -> dell.order_status.DellOrder.fromJson(json))
@:jsonStringify(dellOrder -> {
	actualShipmentDate: dellOrder.actualShipmentDate != null ? dell.Tools.toIsoString(dellOrder.actualShipmentDate) : null,
	dellPurchaseId: dellOrder.dellPurchaseId,
	estimatedDeliveryDate: dellOrder.estimatedDeliveryDate != null ? dell.Tools.toIsoString(dellOrder.estimatedDeliveryDate) : null,
	estimatedShipmentDate: dellOrder.estimatedShipmentDate != null ? dell.Tools.toIsoString(dellOrder.estimatedShipmentDate) : null,
	invoiceDate: dellOrder.invoiceDate != null ? dell.Tools.toIsoString(dellOrder.invoiceDate) : null,
	invoiceNumber: dellOrder.invoiceNumber,
	orderNumber: dellOrder.orderNumber,
	orderStatus: dellOrder.orderStatus,
	productInfo: dellOrder.productInfo,
	purchaseOrderLines: dellOrder.purchaseOrderLines,
	revisedDeliveryDate: dellOrder.revisedDeliveryDate != null ? dell.Tools.toIsoString(dellOrder.revisedDeliveryDate) : null,
	revisedShipmentDate: dellOrder.revisedShipmentDate != null ? dell.Tools.toIsoString(dellOrder.revisedShipmentDate) : null,
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

	/** Creates a new Dell order from the specified JSON object. **/
	public static function fromJson(json: DellOrderData) return new DellOrder({
		actualShipmentDate: json.actualShipmentDate != null ? Tools.ofIsoString(json.actualShipmentDate) : null,
		dellPurchaseId: json.dellPurchaseId ?? "",
		estimatedDeliveryDate: json.estimatedDeliveryDate != null ? Tools.ofIsoString(json.estimatedDeliveryDate) : null,
		estimatedShipmentDate: json.estimatedShipmentDate != null ? Tools.ofIsoString(json.estimatedShipmentDate) : null,
		invoiceDate: json.invoiceDate != null ? Tools.ofIsoString(json.invoiceDate) : null,
		invoiceNumber: json.invoiceNumber ?? "",
		orderNumber: json.orderNumber ?? "",
		orderStatus: json.orderStatus ?? "",
		productInfo: json.productInfo != null ? json.productInfo.map(ProductInfo.fromJson) : [],
		purchaseOrderLines: json.purchaseOrderLines != null ? json.purchaseOrderLines.map(PurchaseOrderLine.new) : [],
		revisedDeliveryDate: json.revisedDeliveryDate != null ? Tools.ofIsoString(json.revisedDeliveryDate) : null,
		revisedShipmentDate: json.revisedShipmentDate != null ? Tools.ofIsoString(json.revisedShipmentDate) : null,
		shipToInformation: json.shipToInformation != null ? new ShipToInformation(json.shipToInformation) : null,
		statusDateTime: json.statusDateTime != null ? Tools.ofIsoString(json.statusDateTime) : null,
		trackingInformation: json.trackingInformation != null ? json.trackingInformation.map(TrackingInformation.new) : []
	});
}

/** Defines the data of a Dell order. **/
typedef DellOrderData = {

	/** The date the item actually shipped. **/
	var ?actualShipmentDate: String;

	/** The Dell purchase identifiers. **/
	var ?dellPurchaseId: String;

	/** The estimated delivery date of the order. **/
	var ?estimatedDeliveryDate: String;

	/** The estimated shipment date of the order. **/
	var ?estimatedShipmentDate: String;

	/** The creation date of the Dell invoice. **/
	var ?invoiceDate: String;

	/** The Dell invoice number. **/
	var ?invoiceNumber: String;

	/** The Dell's internal order number. **/
	var ?orderNumber: String;

	/** The current status of the Dell order. **/
	var ?orderStatus: String;

	/** The product information. **/
	var ?productInfo: Array<ProductInfoData>;

	/** The purchase order lines. **/
	var ?purchaseOrderLines: Array<PurchaseOrderLineData>;

	/** The revised delivery date of the order. **/
	var ?revisedDeliveryDate: String;

	/** The revised shipment date of the order. **/
	var ?revisedShipmentDate: String;

	/** The shipment information. **/
	var ?shipToInformation: Null<ShipToInformationData>;

	/** The date for the current status. **/
	var ?statusDateTime: String;

	/** The tracking information. **/
	var ?trackingInformation: Array<TrackingInformationData>;
}
