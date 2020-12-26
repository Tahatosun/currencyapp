class CurrenyRates {
  CurrenyRates({
    this.base,
    this.rates,
    this.date,
  });

  String base;
  Map<String, double> rates;
  DateTime date;

  factory CurrenyRates.fromJson(Map<String, dynamic> json) => CurrenyRates(
        base: json["base"],
        rates: Map.from(json["rates"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        date: DateTime.parse(json["date"]),
      );
}
