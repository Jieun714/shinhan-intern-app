import 'package:flutter/material.dart';

import '../popup/kosdaq.dart';
import '../popup/kospi.dart';

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
