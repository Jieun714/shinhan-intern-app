import 'package:flutter/material.dart';

class StockInfo extends StatelessWidget {
  const StockInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    child: Align(alignment: Alignment.centerRight, child: Text('779.28'))
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
                      child: Align(alignment: Alignment.centerRight, child: Text('8억 1,010만주'))
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
                      child: Align(alignment: Alignment.centerRight, child: Text('782.53'))
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
                      child: Align(alignment: Alignment.centerRight, child: Text('768.38'))
                  )
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 20)
          )
        ],
    );
  }
}