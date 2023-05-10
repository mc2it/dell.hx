package dell;

import dell.auth.AccessToken;

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
	function create(body: {client_id: String, client_secret: String, grant_type: String}): AccessToken;
}

/** Manages the orders. **/
private interface OrderController {
	// TODO
	@:post("/api/search")
	function view(): Noise;
}

/** Manages the purchase orders. **/
private interface PurchaseOrderController {
	// TODO
	@:params(version = header["Accepts-Version"])
	@:post("/")
	function create(version: String): Noise;
}

/** Manages the quotes. **/
private interface QuoteController {
	// TODO
	@:get('/api/v1/quote/$quoteNumber/$quoteVersion/$locale')
	function view(quoteNumber: String, quoteVersion: Int, locale: String): Noise;
}
