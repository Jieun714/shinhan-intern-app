import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/popup/stock_info.dart';
import 'package:shinhan_intern_app/popup/kosdaq_chart.dart';

class Kosdaq extends StatelessWidget {
  const Kosdaq({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_arrow_left)),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget> [
            //주식 소개
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('코스닥', style: TextStyle(fontSize: 20),),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('782.05', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                        TextSpan(
                          children: <TextSpan> [
                            TextSpan(text: '어제보다 '),
                            TextSpan(text: '+9.21(1.1%)', style: TextStyle(color: Colors.red)),
                          ],
                        )
                    )
                ),
              ],
            ),

            //주식 그래프
            KosdaqChart(),

            //버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1일"),),
                TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1주일"),),
                TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, backgroundColor: Color(0xffEFEFEF), padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("3개월"),),
                TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1년"),),
                TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("5년"),),
              ],
            ),

            Divider(thickness: 15, height: 60, color: Color(0xffEFEFEF)),

            //주가 정보
            StockInfo(),
            //인기주식 버튼
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(	//모서리를 둥글게
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xff074EE8),
                    textStyle: const TextStyle(fontSize: 16),
                    fixedSize: Size(200, 50)
                ),
                onPressed: () {},
                child: Text('인기주식 보기')
            )
          ],
        ),
      ),
    );
  }
}