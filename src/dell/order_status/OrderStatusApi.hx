package dell.order_status;

import dell.order_status.SearchParameter.SearchKey;
import dell.order_status.SearchParameter.WildcardSearchKey;
import dell.order_status.SearchParameter.WildcardSearchParameter;

/** Provides the ability to retrieve Dell order status information for all order types. **/
final class OrderStatusApi {

	/** The API client. **/
	final client: Client;

	/** The API version number. **/
	final version: String;

	/** Creates a new Order Status API. **/
	public function new(client: Client, version: String) {
		this.client = client;
		this.version = version;
	}

	/** Retrieves order status information. **/
	public function search(parameters: Map<SearchKey, Array<String>>) {
		final params = [for (key => values in parameters) new SearchParameter({key: key, values: values})];
		return client.remote.orderStatus()
			.search({searchParameter: params}, version)
			.next(orderStatus -> orderStatus.purchaseOrderDetails);
	}

	/** Retrieves order status information based on wildcard purchase order search. **/
	public function searchWithWildcard(parameters: Map<WildcardSearchKey, String>) {
		final params = [for (key => value in parameters) new WildcardSearchParameter({key: key, value: value})];
		return client.remote.orderStatus()
			.searchWithWildcard({searchParameter: params}, version)
			.next(orderStatus -> orderStatus.purchaseOrderDetails);
	}
}
