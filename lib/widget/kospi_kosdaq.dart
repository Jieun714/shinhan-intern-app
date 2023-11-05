import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/popup/stock.dart';

import '../popup/chart/kosdaq_chart_small.dart';
import '../popup/chart/kospi_chart_small.dart';

class KospiWidget extends StatelessWidget {
  const KospiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Stock('kospi')));
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
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('코스피'),
                      Text('2,368.34',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('+25.22(1.0%)',
                          style: TextStyle(color: Colors.redAccent))
                    ],
                  ),
                ),
                // 차트
                KospiChartSmall(),
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Stock('kosdaq')));
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
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('코스닥'),
                      Text('782.05',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('+9.21(1.1%)',
                          style: TextStyle(color: Colors.redAccent))
                    ],
                  ),
                ),
                // 차트
                KosdaqChartSmall(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
