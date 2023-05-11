package dell.auth;

/** Represents an authorization token. **/
@:jsonParse(json -> new dell.auth.AccessToken({
	expires: DateTools.delta(Date.now(), json.expires_in * DateTools.seconds(1)),
	scope: json.scope,
	token: json.access_token,
	type: json.token_type
}))
@:jsonStringify(accessToken -> {
	expires: accessToken.expires,
	scope: accessToken.scope,
	token: accessToken.token,
	type: accessToken.type
})
class AccessToken implements Model {

	/** The expiration date and time of this token. **/
	@:constant var expires: Date;

	/** Value indicating whether this token has expired. **/
	@:computed var hasExpired: Bool = Date.now().getTime() > expires.getTime();

	/** The OAuth scope. **/
	@:constant var scope: String = @byDefault "oob";

	/** The access token. **/
	@:constant var token: String;

	/** The token type. **/
	@:constant var type: String = @byDefault "Bearer";
}
