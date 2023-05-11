package dell.order_status;

/** Provides the ability to retrieve Dell order status information for all order types. **/
final class OrderStatusApi {

	/** The API client. **/
	final client: Client;

	/** The API version number. **/
	final version: String;

	/** Creates a new order status API. **/
	public function new(client: Client, version: String) {
		this.client = client;
		this.version = version;
	}

	/** Retrieves order status information. **/
	public function search() {
		// TODO
	}

	/** Retrieves order status information based on wildcard purchase order search. **/
	public function searchWithWildcard() {
		// TODO
	}
}
