package dell.quote;

import haxe.Int64;

/** Provides the ability to retrieve Dell quote information. **/
final class QuoteApi {

	/** The API client. **/
	final client: Client;

	/** The API version number. **/
	final version: String;

	/** Creates a new quote API. **/
	public function new(client: Client, version: String) {
		this.client = client;
		this.version = version;
	}

	/** Gets quote information by number, version and locale. **/
	public function get(quoteNumber: Int64, quoteVersion: Int, locale: String)
		return client.remote.quotes().get(Std.parseFloat(Int64.toStr(quoteNumber)), quoteVersion, locale, version);
}
