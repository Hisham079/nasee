import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatelessWidget {
  const Charts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          child: SfCircularChart(
            backgroundColor: Colors.grey,
            borderColor: Colors.green,
            title: ChartTitle(text: 'Health servey'),
            legend: Legend(isVisible: true),
            series: <CircularSeries>[
              PieSeries<ChartData, String>(
                  explode: true,
                  explodeIndex: 1,
                  dataSource: [
                    ChartData('Covid +', 50.0, Colors.red),
                    ChartData('Covid -', 60.0, Colors.green),
                    ChartData('Vaccinated', 80.0, Colors.yellow),
                    ChartData('Vaccinated', 80.0, Colors.yellow)
                  ],
                  xValueMapper: (ChartData item, _) => item.x,
                  yValueMapper: (ChartData item, _) => item.y,
                  dataLabelMapper: (ChartData item, _) => item.x,
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  String x;
  double y;
  Color color;
  ChartData(this.x, this.y, this.color);
}
