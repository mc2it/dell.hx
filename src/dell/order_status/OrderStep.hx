package dell.order_status;

/** Defines the current step of a purchase order. **/
enum abstract OrderStep(String) from String to String {

	/** The order is in production. **/
	var InProduction;

	/** The order has been shipped. **/
	var Shipped;

	/** The order has been delivered. **/
	var Delivered;

	/** The service or subscription is available. **/
	var Available;
}
