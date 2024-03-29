package dell.purchase_order;

/** Provides the ability to submit a purchase order to Dell. **/
final class PurchaseOrderApi {

	/** The API client. **/
	final client: Client;

	/** The API version number. **/
	final version: String;

	/** Creates a new Purchase Order API. **/
	public function new(client: Client, version: String) {
		this.client = client;
		this.version = version;
	}

	/** TODO(NotImplemented) Submits a purchase order. **/
	public function submit()
		return Promise.reject(new Error(NotImplemented, "PurchaseOrderApi.submit()"));
}
