package dell.order_status;

/** Provides tracking information. **/
@:jsonParse(json -> new dell.order_status.TrackingInformation(json))
@:jsonStringify(trackingInfo -> {
	carrierMileStone: trackingInfo.carrierMileStone,
	carrierName: trackingInfo.carrierName,
	carrierTrackingURL: trackingInfo.carrierTrackingURL,
	milestoneEventDescription: trackingInfo.milestoneEventDescription,
	milestoneStatusChange: trackingInfo.milestoneStatusChange,
	waybill: trackingInfo.waybill
})
class TrackingInformation implements Model {

	/** The carrier milestone information. **/
	@:constant var carrierMileStone: String = @byDefault "";

	/** The carrier name. **/
	@:constant var carrierName: String = @byDefault "";

	/** The carrier tracking link. **/
	@:constant var carrierTrackingURL: String = @byDefault "";

	/** The milestone event description. **/
	@:constant var milestoneEventDescription: String = @byDefault "";

	/** The milestone status change. **/
	@:constant var milestoneStatusChange: Bool = @byDefault false;

	/** The shipment tracking number. **/
	@:constant var waybill: String = @byDefault "";
}

/** Defines the data of a tracking information. **/
typedef TrackingInformationData = {

	/** The carrier milestone information. **/
	var ?carrierMileStone: String;

	/** The carrier name. **/
	var ?carrierName: String;

	/** The carrier tracking link. **/
	var ?carrierTrackingURL: String;

	/** The milestone event description. **/
	var ?milestoneEventDescription: String;

	/** The milestone status change. **/
	var ?milestoneStatusChange: Bool;

	/** The shipment tracking number. **/
	var ?waybill: String;
}
