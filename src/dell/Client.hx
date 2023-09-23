package dell;

import dell.order_status.OrderStatusApi;
import dell.purchase_order.PurchaseOrderApi;
import dell.quote.QuoteApi;
import tink.Url;
import tink.Web;
import tink.http.Header.HeaderField;
import tink.http.Request.OutgoingRequest;
import tink.web.proxy.Remote;
using haxe.io.Path;

/** An HTTP client to query the [Dell Premier APIs](https://developer.dell.com/apis). **/
final class Client {

	/** The access token. **/
	public var accessToken(null, default): Null<AccessToken> = null;

	/** The base URL of the remote API endpoint. **/
	public final baseUrl: Url;

	/** Value indicating whether the client operates in test mode. **/
	public final isTest: Bool;

	/** The identifier used to authorize this client. **/
	final clientId: String;

	/** The secret used to authorize this client. **/
	final clientSecret: String;

	/** The remote API client. **/
	@:allow(dell) final remote: Remote<RemoteApi>;

	/** Creates a new client. **/
	public function new(clientId: String, clientSecret: String, ?options: ClientOptions) {
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		baseUrl = (options?.baseUrl?.toString() ?? "https://apigtwb2c.us.dell.com").addTrailingSlash();
		isTest = options?.isTest ?? false;
		remote = Web.connect((baseUrl: RemoteApi), {augment: {before: [onRequest]}});
	}

	/** Retrieves an authorization token. **/
	public function authorize(): Promise<AccessToken> return remote
		.authorize({client_id: clientId, client_secret: clientSecret, grant_type: "client_credentials"})
		.next(response -> accessToken = response);

	/** Returns the Order Status API endpoint. **/
	public inline function orderStatus(version = "2.0")
		return new OrderStatusApi(this, version);

	/** Returns the Purchase Order API endpoint. **/
	public inline function purchaseOrder(version = "2.0")
		return new PurchaseOrderApi(this, version);

	/** Returns the Quote API endpoint. **/
	public inline function quote(version = "1.0")
		return new QuoteApi(this, version);

	/** Intercepts and modifies the outgoing requests. **/
	function onRequest(request: OutgoingRequest): Promise<OutgoingRequest> {
		final header = accessToken != null ? request.header.concat([new HeaderField(AUTHORIZATION, 'Bearer ${accessToken.token}')]) : request.header;
		return new OutgoingRequest(header, request.body);
	}
}

/** Defines the options of a `Client` instance. **/
typedef ClientOptions = {

	/** The base URL of the remote API endpoint. **/
	var ?baseUrl: Url;

	/** Value indicating whether the client operates in test mode. **/
	var ?isTest: Bool;
}
