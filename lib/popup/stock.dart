import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/popup/chart/kosdaq_chart.dart';
import 'package:shinhan_intern_app/popup/chart/kospi_chart.dart';
import 'package:shinhan_intern_app/popup/stock_info.dart';

class Stock extends StatelessWidget {
  final choice;
  const Stock(this.choice);

  @override
  Widget build(BuildContext context) {
    final data;
    if(choice == 'kosdaq'){
      data = ['코스닥', '782.05', '+9.21(1.1%)', 'up'];
    } else{
      data = ['코스피', '2,368.34', '+25.22(1.0%)', 'up'];
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   leading: ElevatedButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       child: Icon(Icons.keyboard_arrow_left)),
        // ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget> [
            //이전 버튼
            Padding(
              padding: EdgeInsets.only(bottom: 10),
                child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () { Navigator.pop(context); },
                )
              )
            ),
            //주식 소개
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(data[0], style: TextStyle(fontSize: 20),),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(data[1], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                        TextSpan(
                          children: <TextSpan> [
                            TextSpan(text: '어제보다 '),
                            TextSpan(text: data[2], style: TextStyle(color: (data[3] == 'up') ?Colors.red : Colors.blue)),
                          ],
                        )
                    )
                ),
              ],
            ),

            //주식 그래프
            (choice =='kosdaq') ? KosdaqChart() : KospiChart(),

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
            StockInfo(choice),

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
        )
      ),
    );
  }
}