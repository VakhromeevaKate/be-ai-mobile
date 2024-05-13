import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

  class _DiaryState extends State<Diary> {

  var locale = ui.window.locale.toString();

  var pieDataEn = [
    ChartData('Fiber', 90, LightColors.kGreen, 'Fiber'),
    ChartData('Proteins', 20, LightColors.kPalePink, 'Proteins'),
    ChartData('Fats', 10, LightColors.kDarkYellow, 'Fats'),
    ChartData('Carbohydrates', 40, LightColors.kLavender, 'Carbohydrates'),
  ];

  var waterChartData = [
    WaterChartData('Mo', 0.3),
    WaterChartData('Tu', 1.2),
    WaterChartData('We', 2.0),
    WaterChartData('Th', 1.7),
    WaterChartData('Fr', 2.1),
    WaterChartData('Sa', 2.0),
    WaterChartData('Su', 1.7),
  ];

  var pieDataRu = [
    ChartData('Клетчатка', 90, LightColors.kGreen, 'Клетчатка'),
    ChartData('Белки', 20, LightColors.kPalePink, 'Белки'),
    ChartData('Жиры', 10, LightColors.kDarkYellow, 'Жиры'),
    ChartData('Углеводы', 40, LightColors.kLavender, 'Углеводы'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
              child: SfCircularChart(
                  title: ChartTitle(text: S.of(context).DailyReport),
                  legend: const Legend(isVisible: true),
                  series: <CircularSeries<ChartData, String>>[
                    DoughnutSeries<ChartData, String>(
                        // radius: '80%',
                        innerRadius: '40%',
                        dataSource: locale == 'Ru-ru' ? pieDataRu : pieDataEn,
                        xValueMapper: (ChartData data, _) => data.xData,
                        yValueMapper: (ChartData data, _) => data.yData,
                        pointColorMapper:(ChartData data,  _) => data.color,
                        dataLabelMapper: (ChartData data, _) => data.text,
                        dataLabelSettings: const DataLabelSettings(isVisible: true)),
                  ]
              )
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: Center(
                child: SfCartesianChart(
                    title: ChartTitle(text: S.of(context).Water),
                    primaryXAxis: const CategoryAxis(),
                    series: <CartesianSeries>[
                      StackedColumn100Series<WaterChartData, String>(
                          dataSource: waterChartData,
                          xValueMapper: (WaterChartData data, _) => data.xData,
                          yValueMapper: (WaterChartData data, _) => data.yData,
                          width: 0.8, // Width of the columns
                          spacing: 0.2, // Spacing between the columns
                        color: LightColors.kLavender,
                      ),
                    ]
                )
            )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 32,
                ),
                backgroundColor: LightColors.kGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
              onPressed: (){
                // Navigator.pushNamed(context, '/home');
                Navigator.pushNamed(context, '/questionnaire');
              },
              child: Text(S.of(context).AddAMeal),
            ),
          ),
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.xData, this.yData, this.color, [this.text]);
  final String xData;
  final num yData;
  String? text;
  final Color color;
}

class WaterChartData {
  WaterChartData(this.xData, this.yData);
  final String xData;
  final double yData;
}