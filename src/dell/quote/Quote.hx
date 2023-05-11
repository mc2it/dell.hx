package dell.quote;

/** Represents a quote. **/
@:jsonParse(json -> new dell.quote.Quote(json))
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
	@:constant var quoteNumber: Int = @byDefault 0;
	@:constant var quoteType: String = @byDefault "";
	@:constant var quoteVersion: Int = @byDefault 0;
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
}
