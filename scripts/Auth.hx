//! --define hxnodejs --define no-deprecation-warnings --library hxnodejs --library tink_http --library tink_querystring
import haxe.Json;
import sys.io.File;
import tink.Chunk;
import tink.QueryString;
import tink.Url;
import tink.http.Client;
import tink.http.Header.HeaderField;
using haxe.io.Path;
using tink.CoreApi;

/** Authenticates the user. **/
function main() {
	final body: Chunk = QueryString.build({
		client_id: Sys.getEnv("DELL_CLIENT_ID"),
		client_secret: Sys.getEnv("DELL_CLIENT_SECRET"),
		grant_type: "client_credentials"
	});

	final headers = [
		new HeaderField(CONTENT_LENGTH, body.length),
		new HeaderField(CONTENT_TYPE, "application/x-www-form-urlencoded")
	];

	final file = ".vscode/settings.json";
	final settings = Reflect.field(Json.parse(File.getContent(file)), "rest-client.environmentVariables");
	final url = Url.parse(Path.addTrailingSlash(settings.dev.apiUrl)).resolve("auth/oauth/v2/token");

	Client.fetch(url, {method: POST, headers: headers, body: body}).all().handle(outcome -> switch outcome {
		case Failure(error):
			Sys.println(error.message);
		case Success(response):
			final accessToken = Json.parse(response.body.toString()).access_token;
			Tools.replaceInFile(file, ~/"accessToken": "[^"]+"/, '"accessToken": "$accessToken"');
	});
}
