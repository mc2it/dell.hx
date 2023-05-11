package dell.quote;

import haxe.Int64;

/** Represents a quote. **/
@:jsonParse(json -> dell.quote.Quote.fromJson(json))
@:jsonStringify(quote -> {
	affinityId: quote.affinityId,
	// TODO billingContactobject{8}
	createdBy: quote.createdBy,
	creationDate: quote.creationDate != null ? Tools.toIsoString(quote.creationDate) : null,
	currency: quote.currency,
	// TODO dealDetailsobject{8}
	// TODO endUserobject{12}
	expirationDate: quote.expirationDate != null ? Tools.toIsoString(quote.expirationDate) : null,
	finalPrice: quote.finalPrice,
	gstin: quote.gstin,
	id: quote.id,
	// TODO items array [object]{20}
	listPrice: quote.listPrice,
	nonTaxableAmount: quote.nonTaxableAmount,
	quoteNumber: Tools.toFloat(quote.quoteNumber),
	quoteType: quote.quoteType,
	quoteVersion: quote.quoteVersion,
	resellerAffinityId: quote.resellerAffinityId,
	// TODO resellerobject{6}
	salesPrice: quote.salesPrice,
	// TODO salesRepDetails array [object]{3}
	solutionId: quote.solutionId,
	solutionVersion: quote.solutionVersion,
	taxableAmount: quote.taxableAmount,
	totalEcoFee: quote.totalEcoFee,
	totalShipping: quote.totalShipping,
	totalTax: quote.totalTax
})
class Quote implements Model {
	@:constant var affinityId: String = @byDefault "";
	// TODO @:constant var billingContactobject{8}
	@:constant var createdBy: String = @byDefault "";
	@:constant var creationDate: Null<Date> = @byDefault null;
	@:constant var currency: String = @byDefault "";
	// TODO @:constant var dealDetailsobject{8}
	// TODO @:constant var endUserobject{12}
	@:constant var expirationDate: Null<Date> = @byDefault null;
	@:constant var finalPrice: Float = @byDefault 0;
	@:constant var gstin: String = @byDefault "";
	@:constant var id: String = @byDefault "";
	// TODO @:constant var items array [object]{20}
	@:constant var listPrice: Float = @byDefault 0;
	@:constant var nonTaxableAmount: Float = @byDefault 0;
	@:constant var quoteNumber: Int64 = @byDefault 0;
	@:constant var quoteType: String = @byDefault "";
	@:constant var quoteVersion: Int = @byDefault 1;
	@:constant var resellerAffinityId: String = @byDefault "";
	// TODO @:constant var resellerobject{6}
	@:constant var salesPrice: Float = @byDefault 0;
	// TODO @:constant var salesRepDetails array [object]{3}
	@:constant var solutionId: String = @byDefault "";
	@:constant var solutionVersion: String = @byDefault "";
	@:constant var taxableAmount: Float = @byDefault 0;
	@:constant var totalEcoFee: Float = @byDefault 0;
	@:constant var totalShipping: Float = @byDefault 0;
	@:constant var totalTax: Float = @byDefault 0;

	/** Creates a new quote from the specified JSON object. **/
	public static function fromJson(json: QuoteData) return new Quote({
		affinityId: json.affinityId ?? "",
		// TODO billingContactobject{8}
		createdBy: json.createdBy ?? "",
		creationDate: json.creationDate != null ? Tools.ofIsoString(json.creationDate) : null,
		currency: json.currency ?? "",
		// TODO dealDetailsobject{8}
		// TODO endUserobject{12}
		expirationDate: json.expirationDate != null ? Tools.ofIsoString(json.expirationDate) : null,
		finalPrice: json.finalPrice ?? 0.0,
		gstin: json.gstin ?? "",
		id: json.id ?? "",
		// TODO items array [object]{20}
		listPrice: json.listPrice ?? 0.0,
		nonTaxableAmount: json.nonTaxableAmount ?? 0.0,
		quoteNumber: Int64.fromFloat(json.quoteNumber),
		quoteType: json.quoteType ?? "",
		quoteVersion: json.quoteVersion ?? 1,
		resellerAffinityId: json.resellerAffinityId ?? "",
		// TODO resellerobject{6}
		salesPrice: json.salesPrice ?? 0.0,
		// TODO salesRepDetails array [object]{3}
		solutionId: json.solutionId ?? "",
		solutionVersion: json.solutionVersion ?? "",
		taxableAmount: json.taxableAmount ?? 0.0,
		totalEcoFee: json.totalEcoFee ?? 0.0,
		totalShipping: json.totalShipping ?? 0.0,
		totalTax: json.totalTax ?? 0.0
	});
}

/** Defines the data of a quote. **/
typedef QuoteData = {
	var ?affinityId: String;
	// TODO var ?billingContactobject{8}
	var ?createdBy: String;
	var ?creationDate: String;
	var ?currency: String;
	// TODO var ?dealDetailsobject{8}
	// TODO var ?endUserobject{12}
	var ?expirationDate: String;
	var ?finalPrice: Float;
	var ?gstin: String;
	var ?id: String;
	// TODO var ?items array [object]{20}
	var ?listPrice: Float;
	var ?nonTaxableAmount: Float;
	var ?quoteNumber: Float;
	var ?quoteType: String;
	var ?quoteVersion: Int;
	var ?resellerAffinityId: String;
	// TODO var ?resellerobject{6}
	var ?salesPrice: Float;
	// TODO var ?salesRepDetails array [object]{3}
	var ?solutionId: String;
	var ?solutionVersion: String;
	var ?taxableAmount: Float;
	var ?totalEcoFee: Float;
	var ?totalShipping: Float;
	var ?totalTax: Float;
}
