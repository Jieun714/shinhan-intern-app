import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class KosdaqChart extends StatelessWidget {
  const KosdaqChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child : Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: SfCartesianChart(
              // Initialize category axis
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                // Initialize line series
                LineSeries<ChartData, String>(
                  dataSource: [
                    // Bind data source
                    ChartData('Jan', 35),
                    ChartData('Feb', 28),
                    ChartData('Mar', 34),
                    ChartData('Apr', 32),
                    ChartData('May', 40)
                  ],
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y
                )
              ]
            )
        )
    );
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}