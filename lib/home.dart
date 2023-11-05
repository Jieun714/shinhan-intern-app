import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/widget/kospi_kosdaq.dart';
import 'package:shinhan_intern_app/widget/ranking.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                padding: EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: GestureDetector(
                  onTap: () => launchUrlString('https://www.shinhansec.com'),
                  child: Image.asset(
                    'img_ci.png',
                    scale: 4,
                  ),
                ),
              )
            ],
          ),

          // 주요 지수
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 0, 20),
                child: Text(
                  '주요 지수',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),

          // 코스피, 코스닥 컨테이너
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 20),
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
                padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                child: Text(
                  '실시간 인기 차트',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),

          // 실시간 인기 차트
          Ranking()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home_outlined,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    '홈',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.show_chart),
                  Text('주식',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.menu),
                  Text('전체',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
