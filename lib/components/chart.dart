import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Model/sample_view.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: ''),
      legend: Legend(isVisible: true, position: LegendPosition.bottom),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 8000,
        interval: 1000,
        majorTickLines: MajorTickLines(size: 0),
      ),
      series: _getRoundedColumnSeries(),
      tooltipBehavior: TooltipBehavior(enable: true, header: '', canShowMarker: false),
    );
  }

  List<ColumnSeries<ChartSampleData, String>> _getRoundedColumnSeries() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Mon', y: 6000),
          ChartSampleData(x: 'Tue', y: 4000),
          ChartSampleData(x: 'Wed', y: 2000),
          ChartSampleData(x: 'Thu', y: 7000),
          ChartSampleData(x: 'Fri', y: 1000),
          ChartSampleData(x: 'Sat', y: 5000),
          ChartSampleData(x: 'Sun', y: 6500),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        xValueMapper: (ChartSampleData data, _) => data.x,
        yValueMapper: (ChartSampleData data, _) => data.y,
        color: SysColor.tileColor,
        name: 'Achieve',
      ),
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Mon', y: 3000),
          ChartSampleData(x: 'Tue', y: 2000),
          ChartSampleData(x: 'Wed', y: 4000),
          ChartSampleData(x: 'Thu', y: 5000),
          ChartSampleData(x: 'Fri', y: 6000),
          ChartSampleData(x: 'Sat', y: 1000),
          ChartSampleData(x: 'Sun', y: 7000),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        xValueMapper: (ChartSampleData data, _) => data.x,
        yValueMapper: (ChartSampleData data, _) => data.y,
        color: SysColor.buttonColor,
        name: 'Target',
      ),
    ];
  }
}
