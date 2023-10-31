import dell.Client;
using tink.CoreApi;

/** Authenticates the API client. **/
function main() {
	final client = new Client("your client identifier", "your client secret");
	client.authenticate().handle(outcome -> switch outcome {
		case Success(_): trace("The client was successfully authenticated.");
		case Failure(error): trace('An error occurred: ${error.message}');
	});
}
