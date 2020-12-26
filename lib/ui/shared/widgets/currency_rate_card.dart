import 'package:flutter/material.dart';

class CurrencyRateCard extends StatelessWidget {
  final String currencyName;
  final String currencyCode;
  final String imagePath;
  final double rate;

  const CurrencyRateCard(
      {Key key,
      this.currencyName,
      this.currencyCode,
      this.imagePath,
      this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(20),
        leading: Image.asset('assets/flags/$imagePath.png'),
        title: Text(
          this.currencyCode,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        subtitle: Text(
          this.currencyName,
        ),
        trailing: Text(
          this.rate.toStringAsFixed(3),
          style: TextStyle(fontSize: 18),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
