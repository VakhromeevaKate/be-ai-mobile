import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../generated/l10n.dart';

class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

  class _DiaryState extends State<Diary> {

  var locale = ui.window.locale.toString();

  var pieDataEn = [
    _PieData('Fiber', 90, 'Fiber'),
    _PieData('Proteins', 20, 'Proteins'),
    _PieData('Fats', 10, 'Fats'),
    _PieData('Carbohydrates', 40, 'Carbohydrates'),
    _PieData('Soup', 90, 'Soup'),
  ];

  var pieDataRu = [
    _PieData('Клетчатка', 90, 'Клетчатка'),
    _PieData('Белки', 20, 'Белки'),
    _PieData('Жиры', 10, 'Жиры'),
    _PieData('Углеводы', 40, 'Углеводы'),
    _PieData('Суп', 90, 'Суп'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
              child: SfCircularChart(
                  title: ChartTitle(text: S.of(context).DailyReport),
                  legend: const Legend(isVisible: true),
                  series: <PieSeries<_PieData, String>>[
                    PieSeries<_PieData, String>(
                        explode: true,
                        explodeIndex: 0,
                        dataSource: locale == 'Ru-ru' ? pieDataRu : pieDataEn,
                        xValueMapper: (_PieData data, _) => data.xData,
                        yValueMapper: (_PieData data, _) => data.yData,
                        dataLabelMapper: (_PieData data, _) => data.text,
                        dataLabelSettings: const DataLabelSettings(isVisible: true)),
                  ]
              )
          ),
        ),
      ],
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}