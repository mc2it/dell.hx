import dell.Client;
using tink.CoreApi;

/** Authorizes the API client. **/
function main() {
	final client = new Client("your client identifier", "your client secret");
	client.authorize().handle(outcome -> switch outcome {
		case Success(_): trace("The client was successfully authorized.");
		case Failure(error): trace('An error occurred: ${error.message}');
	});
}
