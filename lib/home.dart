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
                // 코스피
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kospi()));
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
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
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
                ),

                SizedBox(width: 10),

                // 코스닥
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kosdaq()));
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
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
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
                ),
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

  List<Widget> loadList() {
    List<Widget> stockList = [];
    stockList.add(Container(color: Colors.redAccent, height: 70));
    stockList.add(Container(color: Colors.orangeAccent, height: 70));
    stockList.add(Container(color: Colors.yellowAccent, height: 70));
    stockList.add(Container(color: Colors.greenAccent, height: 70));
    stockList.add(Container(color: Colors.blueAccent, height: 70));
    return stockList;
  }
}
