package dell.quote;

/** Provides the ability to retrieve Dell quote information. **/
class QuoteApi {

	/** The API client. **/
	final client: Client;

	/** Creates a new quote API. **/
	public function new(client: Client) this.client = client;

	/** Gets quote information by number, version and locale. **/
	public function get(quoteNumber: String, quoteVersion: Int, locale: String)
		return client.remote.quotes().view(quoteNumber, quoteVersion, locale);
}
