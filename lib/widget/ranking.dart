import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking({super.key});

  @override
  Widget build(BuildContext context) {
    List<StockItem> stockItems = [
      StockItem(
          rank: 1,
          logo: Color(0xff0051a7),
          name: '삼성전자',
          color: Colors.blueAccent,
          price: '69,600',
          percent: '-0.14%'),
      StockItem(
          rank: 2,
          logo: Color(0xffc0002b),
          name: 'LG에너지솔루션',
          color: Colors.redAccent,
          price: '402,000',
          percent: '+2.68%'),
      StockItem(
          rank: 3,
          logo: Color(0xfffa002b),
          name: 'SK하이닉스',
          color: Colors.redAccent,
          price: '125,800',
          percent: '+0.40%'),
      StockItem(
          rank: 4,
          logo: Color(0xff0051a7),
          name: '삼성바이오로직스',
          color: Colors.blueAccent,
          price: '705,000',
          percent: '-0.98%'),
      StockItem(
          rank: 5,
          logo: Color(0xff0051a7),
          name: '삼성전자우',
          color: Colors.redAccent,
          price: '56,600',
          percent: '+0.53%'),
    ];

    return Column(
        children: stockItems.map((item) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(item.rank.toString()),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: item.logo,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(0, 2))
                        ]),
                  ),
                ),
                Text(
                  item.name,
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(item.price,
                    style: TextStyle(fontSize: 17, color: item.color)),
                Text(item.percent,
                    style: TextStyle(fontSize: 12, color: item.color)),
              ],
            ),
          )
        ],
      );
    }).toList());
  }
}

class StockItem {
  late final int rank;
  late final Color logo;
  late final String name;
  late final Color color;
  late final String price;
  late final String percent;

  StockItem(
      {required this.rank,
      required this.logo,
      required this.name,
      required this.color,
      required this.price,
      required this.percent});
}
