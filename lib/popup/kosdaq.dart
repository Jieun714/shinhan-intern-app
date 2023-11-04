import 'package:flutter/material.dart';

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
          children: [
            //text
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
                      children: [
                        TextSpan(text: '어제보다 '),
                        TextSpan(text: '+9.21(1.1%)', style: TextStyle(color: Colors.red)),
                      ],
                    )
                )
            ),

            //주식 그래프
            Container(
                child: Text('주식 그래프 들어갈 예정')
            ),

            //버튼
            Row(
                children:[
                  Spacer(),
                  TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1일"),), Spacer(),
                  TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1주일"),), Spacer(),
                  TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("3개월"),), Spacer(),
                  TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("1년"),), Spacer(),
                  TextButton(onPressed: (){ }, style: OutlinedButton.styleFrom(primary: Colors.black, padding: EdgeInsets.fromLTRB(25, 13, 25, 13)), child: Text("5년"),), Spacer()
                ]
            ),

            Divider(thickness: 15, height: 60, color: Color(0xffEFEFEF)),

            //간단한 주가 소개
            DataTable(
              columns: [
                DataColumn(label: Text('시작')),
                DataColumn(label: Align(alignment: Alignment.centerRight, child: Text('779.28'))),
                DataColumn(label: Text('A')),
                DataColumn(label: Text('거래량')),
                DataColumn(label: Align(alignment: Alignment.centerRight, child: Text('8억 1,010만주')))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('최고')),
                  DataCell(Align(alignment: Alignment.centerRight, child: Text('782.53'))),
                  DataCell(Text('A')),
                  DataCell(Text('최저')),
                  DataCell(Align(alignment: Alignment.centerRight, child: Text('768.38')))
                ])
              ],
            ),

            Divider(thickness: 15, height: 40, color: Color(0xffFFFFFF)),

            //인기주식 버튼
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(	//모서리를 둥글게
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xff074EE8),
                    textStyle: const TextStyle(fontSize: 16)
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