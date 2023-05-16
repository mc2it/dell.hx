package dell.quote;

import dell.quote.EstimatedDateRange.EstimatedDateRangeData;
import dell.quote.ShippingContact.ShippingContactData;

/** Represents a shipment. **/
@:jsonParse(json -> dell.quote.EstimatedDateRange.fromJson(json))
@:jsonStringify(shipment -> {
	estimatedDeliveryDateRange: shipment.estimatedDeliveryDateRange,
	estimatedShippingDateRange: shipment.estimatedShippingDateRange,
	mustArriveByDate: shipment.mustArriveByDate != null ? dell.Tools.toIsoString(shipment.mustArriveByDate) : null,
	shipmentId: shipment.shipmentId,
	shippingContact: shipment.shippingContact,
	shippingDiscount: shipment.shippingDiscount,
	shippingMethod: shipment.shippingMethod,
	shippingPrice: shipment.shippingPrice
})
class Shipment implements Model {
	@:constant var estimatedDeliveryDateRange: Null<EstimatedDateRange> = @byDefault null;
	@:constant var estimatedShippingDateRange: Null<EstimatedDateRange> = @byDefault null;
	@:constant var mustArriveByDate: Null<Date> = @byDefault null;
	@:constant var shipmentId: String = @byDefault "";
	@:constant var shippingContact: Null<ShippingContact> = @byDefault null;
	@:constant var shippingDiscount: Float = @byDefault 0;
	@:constant var shippingMethod: String = @byDefault "";
	@:constant var shippingPrice: Float = @byDefault 0;

	/** Creates a new estimated date range from the specified JSON object. **/
	public static function fromJson(json: ShipmentData) return new Shipment({
		estimatedDeliveryDateRange: json.estimatedDeliveryDateRange != null ? EstimatedDateRange.fromJson(json.estimatedDeliveryDateRange) : null,
		estimatedShippingDateRange: json.estimatedShippingDateRange != null ? EstimatedDateRange.fromJson(json.estimatedShippingDateRange) : null,
		mustArriveByDate: json.mustArriveByDate != null ? Tools.ofIsoString(json.mustArriveByDate) : null,
		shipmentId: json.shipmentId,
		shippingContact: json.shippingContact != null ? ShippingContact.fromJson(json.shippingContact) : null,
		shippingDiscount: json.shippingDiscount,
		shippingMethod: json.shippingMethod,
		shippingPrice: json.shippingPrice
	});
}

/** Defines the data of a shipment. **/
typedef ShipmentData = {
	var ?estimatedDeliveryDateRange: EstimatedDateRangeData;
	var ?estimatedShippingDateRange: EstimatedDateRangeData;
	var ?mustArriveByDate: String;
	var ?shipmentId: String;
	var ?shippingContact: ShippingContactData;
	var ?shippingDiscount: Float;
	var ?shippingMethod: String;
	var ?shippingPrice: Float;
}
