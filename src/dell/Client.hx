package dell;

import dell.auth.AccessToken;
import tink.Url;
import tink.Web;
import tink.http.Header.HeaderField;
import tink.http.Request.OutgoingRequest;
import tink.web.proxy.Remote;
using haxe.io.Path;

/** Submits comments to the [Akismet](https://dell.com) service. **/
final class Client {

	/** The base URL of the remote API endpoint. **/
	public final baseUrl: Url;

	/** Value indicating whether this client is authorized. **/
	public var isAuthorized(get, never): Bool;
		function get_isAuthorized() return accessToken != null && !accessToken.isExpired;

	/** Value indicating whether the client operates in test mode. **/
	public final isTest: Bool;

	/** The access token. **/
	var accessToken: Null<AccessToken> = null;

	/** The front page or home URL of the instance making requests. **/
	final clientId: String;

	/** Value indicating whether the client operates in test mode. **/
	final clientSecret: String;

	/** The remote API client. **/
	final remote: Remote<RemoteApi>;

	/** Creates a new client. **/
	public function new(clientId: String, clientSecret: String, ?options: ClientOptions) {
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		baseUrl = Path.addTrailingSlash(options?.baseUrl ?? "https://apigtwb2c.us.dell.com");
		isTest = options?.isTest ?? false;
		remote = Web.connect((baseUrl: RemoteApi), {augment: {before: [onRequest]}});
	}

	/** Retrieves an authorization token. **/
	public function authorize(): Promise<AccessToken> return remote.auth()
		.create({client_id: clientId, client_secret: clientSecret, grant_type: "client_credentials"})
		.next(token -> accessToken = token);

	/** Intercepts and modifies the outgoing requests. **/
	function onRequest(request: OutgoingRequest): Promise<OutgoingRequest> {
		final header = isAuthorized ? request.header.concat([new HeaderField(AUTHORIZATION, 'Bearer ${accessToken.token}')]) : request.header;
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
