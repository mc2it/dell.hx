package dell.order_status;

/** Defines the current step of a purchase order. **/
enum abstract OrderStep(String) from String to String {

	/** The order is in production. **/
	var InProduction; // TODO Dell: en production, MC2IT: ??? confirmé

	/** The order is available. **/
	var Available; // TODO Dell: build termine ????, MC2IT : ???

	/** The order has been shipped. **/
	var Shipped; // TODO Dell: expédié, MC2IT: expédié

	/** The order has been delivered. **/
	var Delivered; // TODO Dell: livré, MC2IT: en stock
}
