package dell.quote;

import haxe.DynamicAccess;

/** Provides the datails of a problem. **/
@:jsonParse(json -> new dell.quote.ProblemDetails(json))
@:jsonStringify(problem -> {
	detail: problem.detail,
	extensions: problem.extensions,
	instance: problem.instance,
	status: problem.status,
	title: problem.title,
	type: problem.type
})
class ProblemDetails implements Model {
	@:constant var detail: String = @byDefault "";
	@:skipCheck @:constant var extensions: Null<DynamicAccess<Dynamic>> = null;
	@:constant var instance: String = @byDefault "";
	@:constant var status: Int = @byDefault 0;
	@:constant var title: String = @byDefault "";
	@:constant var type: String = @byDefault "";
}
