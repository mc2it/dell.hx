package dell;

/** Represents an authorization token. **/
@:jsonParse(json -> new dell.AccessToken({
	expires: DateTools.delta(Date.now(), json.expires_in * DateTools.seconds(1)),
	scope: json.scope,
	token: json.access_token,
	type: json.token_type
}))
@:jsonStringify(accessToken -> {
	access_token: accessToken.token,
	expires_in: Std.int(Math.max(0, (accessToken.expires.getTime() - Date.now().getTime()) / DateTools.seconds(1))),
	scope: accessToken.scope,
	token_type: accessToken.type
})
class AccessToken implements Model {

	/** The expiration date and time of this token. **/
	@:constant var expires: Date;

	/** Value indicating whether this token has expired. **/
	@:computed var hasExpired: Bool = expires.getTime() <= Date.now().getTime();

	/** The OAuth scope. **/
	@:constant var scope: String = @byDefault "oob";

	/** The access token. **/
	@:constant var token: String;

	/** The token type. **/
	@:constant var type: String = @byDefault "Bearer";
}
