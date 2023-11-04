import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/popup/kosdaq.dart';
import 'package:shinhan_intern_app/popup/kospi.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          // 상단바
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Image.asset(
                  'img_ci.png',
                  scale: 5,
                ),
              )
            ],
          ),

          // 주요 지수
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Text(
                  '주요 지수',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),

          // 코스피, 코스닥 컨테이너
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                KospiWidget(),
                SizedBox(width: 10),
                KosdaqWidget(),
              ],
            ),
          ),

          // 실시간 인기 차트
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Text(
                  '실시간 인기 차트',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),

          // 종목
          ...loadList()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home_outlined),
              Icon(Icons.show_chart),
              Icon(Icons.menu),
            ],
          ),
        ),
      ),
    );
  }

  List<Row> loadList() {
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

    return stockItems.map((item) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
              child: Row(
                children: [
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
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(item.price, style: TextStyle(color: item.color)),
                  Text(item.percent,
                      style: TextStyle(fontSize: 12, color: item.color)),
                ],
              ),
            )
          ]);
    }).toList();
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

class KospiWidget extends StatelessWidget {
  const KospiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Kospi()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff2f3f5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('코스피'),
                Text('2,368.34',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                Text(
                  '+25.22(1.0%)',
                  style: TextStyle(color: Colors.redAccent),
                  // 차트
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KosdaqWidget extends StatelessWidget {
  const KosdaqWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Kosdaq()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff2f3f5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('코스닥'),
                Text('782.05',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                Text(
                  '+9.21(1.1%)',
                  style: TextStyle(color: Colors.redAccent),
                  // 차트
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
