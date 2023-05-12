package dell;

import dell.quote.Quote;

/** Defines the interface of the remote API. **/
interface RemoteApi {

	/** The authentication controller. **/
	@:sub("/auth")
	final auth: AuthController;

	/** The order controller. **/
	@:sub("/PROD/order-status")
	final orders: OrderController;

	/** The purchase order controller. **/
	@:sub("/PROD/procurement/purchase-order")
	final purchaseOrders: PurchaseOrderController;

	/** The quote controller. **/
	@:sub("/PROD/QuoteSearchApi")
	final quotes: QuoteController;
}

/** Manages the authentication. **/
private interface AuthController {

	/** Retrieves an authorization token. **/
	@:consumes("application/x-www-form-urlencoded")
	@:post("/oauth/v2/token")
	function authorize(body: {client_id: String, client_secret: String, grant_type: String}): AccessToken;
}

/** Provides the ability to retrieve Dell order status information for all order types. **/
private interface OrderController {

	/** Retrieves order status information. **/
	@:params(version = header["Accepts-Version"])
	@:post("/api/search")
	function search(version: String): Noise;

	/** Retrieves order status information based on wildcard purchase order search. **/
	@:params(version = header["Accepts-Version"])
	@:post("/api/wildcard/search")
	function searchWithWildcard(version: String): Noise;
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
	@:params(version = header["Accepts-Version"])
	@:get('/api/v1/quote/$quoteNumber/$quoteVersion/$locale')
	function get(quoteNumber: Float, quoteVersion: Int, locale: String, version: String): Quote;
}
