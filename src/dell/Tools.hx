package dell;

import haxe.Int64;
import tink.Stringly;
using DateTools;
using StringTools;

/** Converts the specified ISO 8601 string to a date. **/
@:noDoc function ofIsoString(date: String): Date {
	final parts = date.split(".");
	if (parts.length != 2) return (date: Stringly);
	parts[1] = ~/^(\d+)/.map(parts[1], regex -> regex.matched(0).substring(0, 3));
	return (parts.join("."): Stringly);
}

/** Converts the specified 64-bit integer to a float number. **/
@:noDoc function toFloat(number: Int64)
	return Std.parseFloat(Int64.toStr(number));

/** Converts the specified date to an ISO 8601 string, using the UTC time zone. **/
@:noDoc function toIsoString(date: Date)
	return date.delta(date.getTimezoneOffset().minutes()).format("%FT%TZ");
