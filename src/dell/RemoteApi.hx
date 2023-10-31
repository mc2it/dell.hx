package dell;

import dell.order_status.OrderStatus;
import dell.order_status.SearchParameter;
import dell.quote.Quote;

/** Defines the interface of the remote API. **/
@:noDoc interface RemoteApi {

	/** The order status controller. **/
	@:sub("/PROD/order-status/api")
	final orderStatus: OrderStatusController;

	/** The purchase order controller. **/
	@:sub("/PROD/procurement/purchase-order")
	final purchaseOrder: PurchaseOrderController;

	/** The quote controller. **/
	@:sub("/PROD/QuoteSearchApi/api")
	final quote: QuoteController;

	/** Retrieves an authentication token. **/
	@:consumes("application/x-www-form-urlencoded")
	@:post("/auth/oauth/v2/token")
	function authenticate(body: {client_id: String, client_secret: String, grant_type: String}): AccessToken;
}

/** Provides the ability to retrieve Dell order status information for all order types. **/
private interface OrderStatusController {

	/** Retrieves order status information. **/
	@:params(version = header["Accepts-Version"])
	@:post("/search")
	function search(body: {searchParameter: Array<SearchParameter>}, version: String): OrderStatus;

	/** Retrieves order status information based on wildcard purchase order search. **/
	@:params(version = header["Accepts-Version"])
	@:post("/wildcard/search")
	function searchWithWildcard(body: {searchParameter: Array<WildcardSearchParameter>}, version: String): OrderStatus;
}

/** Provides the ability to submit a purchase order to Dell. **/
private interface PurchaseOrderController {

	/** Submits a purchase order. **/
	@:params(version = header["Accepts-Version"])
	@:post("/")
	function submit(version: String): Noise;
}

/** Provides the ability to retrieve Dell quote information. **/
private interface QuoteController {

	/** Gets quote information by number, version and locale. **/
	@:get('/v1/quote/$quoteNumber/$quoteVersion/$locale')
	function get(quoteNumber: Float, quoteVersion: Int, locale: String): Quote;
}
