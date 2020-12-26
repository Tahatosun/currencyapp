import 'package:currencyapp/core/models/ratesapi_model.dart';
import 'package:currencyapp/core/services/api_service.dart';
import 'package:currencyapp/ui/shared/constants.dart';
import 'package:currencyapp/ui/shared/widgets/currency_rate_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ApiService service = ApiService.getInstance();
  Future<CurrenyRates> rates;
  String dropDownValue = "TRY";

  @override
  void initState() {
    super.initState();
    rates = service.getRates("TRY");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: buildFutureBuilder("TRY"),
    );
  }

  FutureBuilder<CurrenyRates> buildFutureBuilder(String base) {
    return FutureBuilder<CurrenyRates>(
      future: rates,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<String> keys = snapshot.data.rates.keys.toList();
          List<double> values = snapshot.data.rates.values.toList();
          return Container(
              color: Colors.white, child: buildListView(keys, values));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  ListView buildListView(List<String> keys, List<double> values) {
    return ListView.builder(
        itemCount: keys.length,
        itemBuilder: (context, index) => CurrencyRateCard(
              currencyName: currencyMap[keys[index]],
              currencyCode: keys[index],
              imagePath: keys[index],
              rate: values[index],
            ));
  }

  Widget get _appBar => AppBar(
        title: Text('Currency Rates'),
        bottom: _appBarBottom(),
      );

  PreferredSize _appBarBottom() {
    return PreferredSize(
      preferredSize: Size.fromHeight(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "BASE:  ",
            style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
          ),
          DropdownButton(
            hint: Text("Base Seçiniz"),
            style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
            items: listDropDownMenuItem(),
            onChanged: (item) {
              setState(() {
                rates = service.getRates(item);
                dropDownValue = item;
              });
            },
            value: dropDownValue,
          )
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> listDropDownMenuItem() {
    return List<DropdownMenuItem<String>>.generate(curencyBaseList.length,
        (index) {
      return DropdownMenuItem(
        child: Text(
          curencyBaseList[index],
        ),
        value: curencyBaseList[index],
      );
    });
  }
}
