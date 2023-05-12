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

	/** TODO Retrieves order status information. **/
	public function search() {
		return Promise.reject(new Error(NotImplemented, "OrderStatusApi.search()"));
	}

	/** TODO Retrieves order status information based on wildcard purchase order search. **/
	public function searchWithWildcard()
		return Promise.reject(new Error(NotImplemented, "OrderStatusApi.searchWithWildcard()"));
}
