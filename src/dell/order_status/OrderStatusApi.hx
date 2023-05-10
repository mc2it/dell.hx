package dell.order_status;

/** Provides the ability to retrieve Dell order status information for all order types. **/
class OrderStatusApi {

	/** The API client. **/
	final client: Client;

	/** Creates a new order status API. **/
	public function new(client: Client) this.client = client;

	/** Retrieves order status information. **/
	public function search() {
		// TODO
	}

	/** Retrieves order status information based on wildcard purchase order search. **/
	public function searchWithWildcard() {
		// TODO
	}
}
