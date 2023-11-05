import 'package:flutter/material.dart';

class StockInfo extends StatelessWidget {
  final String choice;
  const StockInfo(this.choice);

  @override
  Widget build(BuildContext context) {
    final data;
    if(choice == 'kosdaq'){
      data = ['779.28', '8억 1,010만주', '782.53', '768.38'];
    } else{
      data = ['2,365.59', '5억 7,866만주', '2,370.28', '2,351.83'];
    }

    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 60,
                    child: Align(alignment: Alignment.centerLeft, child: Text('시작'))
                  )
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 60,
                    child: Align(alignment: Alignment.centerRight, child: Text(data[0]))
                  )
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 60,
                  )
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 60,
                      child: Align(alignment: Alignment.centerLeft, child: Text('거래량'))
                  )
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 60,
                      child: Align(alignment: Alignment.centerRight, child: Text(data[1]))
                  )
                )
              ],
            ),
            Divider(
              thickness: 1,
              height: 2,
              color: Color(0xffEFEFEF)
            ),
           Row(
            children: [
              Flexible(
                  flex: 2,
                  child: SizedBox(
                      height: 60,
                      child: Align(alignment: Alignment.centerLeft, child: Text('최고'))
                  )
              ),
              Flexible(
                  flex: 2,
                  child: SizedBox(
                      height: 60,
                      child: Align(alignment: Alignment.centerRight, child: Text(data[2]))
                  )
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 60,
                  )
              ),
              Flexible(
                  flex: 2,
                  child: SizedBox(
                      height: 60,
                      child: Align(alignment: Alignment.centerLeft, child: Text('최저'))
                  )
              ),
              Flexible(
                  flex: 2,
                  child: SizedBox(
                      height: 60,
                      child: Align(alignment: Alignment.centerRight, child: Text(data[3]))
                  )
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 20)
          )
        ],
      )
    );
  }
}