import 'package:flutter/material.dart';
import 'package:monetariz/utilities/color.dart';
import 'package:monetariz/utilities/layout_builder.dart';
import 'package:monetariz/widgets/container/base_container.dart';
import 'package:monetariz/widgets/text/autosizetext.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: HomeMobileScreen());
  }
}

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2022, 12, 12), 35),
      ChartData(DateTime(2022, 12, 13), 13),
      ChartData(DateTime(2022, 12, 14), 34),
      ChartData(DateTime(2022, 12, 15), 27),
      ChartData(DateTime(2022, 12, 16), 40),
      ChartData(DateTime(2022, 12, 17), 40),
      ChartData(DateTime(2022, 12, 18), 40),
      ChartData(DateTime(2022, 12, 19), 40),
      ChartData(DateTime(2022, 12, 20), 40),
      ChartData(DateTime(2022, 12, 21), 40),
      ChartData(DateTime(2022, 12, 22), 40),
      ChartData(DateTime(2022, 12, 23), 40),
      ChartData(DateTime(2022, 12, 24), 40),
      ChartData(DateTime(2022, 12, 25), 40),
      ChartData(DateTime(2022, 12, 26), 40),
      ChartData(DateTime(2022, 12, 27), 40),
      ChartData(DateTime(2022, 12, 28), 40),
      ChartData(DateTime(2022, 12, 29), 40),
      ChartData(DateTime(2022, 12, 30), 40),
      ChartData(DateTime(2022, 12, 31), 40),
      ChartData(DateTime(2023, 1, 1), 40),
      ChartData(DateTime(2023, 1, 2), 40),
      ChartData(DateTime(2023, 1, 3), 40),
      ChartData(DateTime(2023, 1, 4), 40),
      ChartData(DateTime(2023, 1, 5), 40),
      ChartData(DateTime(2023, 1, 6), 40),
      ChartData(DateTime(2023, 1, 7), 40),
      ChartData(DateTime(2023, 1, 8), 40),
      ChartData(DateTime(2023, 1, 9), 40),
      ChartData(DateTime(2023, 1, 10), 40),
      ChartData(DateTime(2023, 1, 11), 40),
      ChartData(DateTime(2023, 1, 12), 40),
      ChartData(DateTime(2023, 1, 13), 40),
      ChartData(DateTime(2023, 1, 14), 40),
      ChartData(DateTime(2023, 1, 15), 40),
      ChartData(DateTime(2023, 1, 16), 40),
      ChartData(DateTime(2023, 1, 17), 40),
      ChartData(DateTime(2023, 1, 18), 40),
      ChartData(DateTime(2023, 1, 19), 40),
      ChartData(DateTime(2023, 1, 20), 40),
      ChartData(DateTime(2023, 1, 21), 40),
      ChartData(DateTime(2023, 1, 22), 40),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Center(child: Icon(Icons.person)),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MyAutoSizeText(
                          'Good Morning',
                          maxFontSize: 16,
                          color: CustomColor.greyText,
                        ),
                        MyAutoSizeText(
                          'Luthfi',
                          maxFontSize: 16,
                          color: CustomColor.greyText,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    MyAutoSizeText(
                      'Your total spending this month',
                      maxFontSize: 14,
                      color: CustomColor.greyText,
                    ),
                    MyAutoSizeText(
                      ' (-60 %)',
                      maxFontSize: 14,
                      color: CustomColor.green5EA570,
                    ),
                  ],
                ),
                const MyAutoSizeText(
                  'Rp 10.000.000',
                  maxFontSize: 32,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyAutoSizeText(
                      'Analytics',
                      maxFontSize: 24,
                    ),
                    BaseContainer(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.all(6),
                      borderRadius: BorderRadius.circular(15),
                      color: CustomColor.green5EA570.withOpacity(0.6),
                      child: const Center(child: MyAutoSizeText('See More')),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                SfCartesianChart(
                  primaryXAxis: DateTimeAxis(),
                  enableAxisAnimation: true,
                  enableMultiSelection: true,
                  backgroundColor: Colors.white,
                  borderColor: Colors.black,
                  legend: Legend(
                    isVisible: true,
                    orientation: LegendItemOrientation.horizontal,
                    toggleSeriesVisibility: true,
                    position: LegendPosition.bottom,
                  ),
                  title: ChartTitle(text: 'Title'),
                  tooltipBehavior: TooltipBehavior(
                    animationDuration: 2,
                    header: 'Tooltip',
                    enable: true,
                    canShowMarker: true,
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  series: <ChartSeries>[
                    SplineSeries<ChartData, DateTime>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      name: 'Pengeluaran',
                    ),
                    SplineSeries<ChartData, DateTime>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => 80,
                      name: 'Nishab',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MyAutoSizeText(
                            'Your Income',
                            maxFontSize: 14,
                            color: CustomColor.greyText,
                          ),
                          MyAutoSizeText(
                            'Rp 50.5 mil',
                            maxFontSize: 32,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MyAutoSizeText(
                            'Your Active Balance',
                            maxFontSize: 14,
                            color: CustomColor.greyText,
                          ),
                          MyAutoSizeText(
                            'Rp 40.8 mil',
                            maxFontSize: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyAutoSizeText(
                      'Latest Transaction',
                      maxFontSize: 24,
                    ),
                    BaseContainer(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.all(6),
                      borderRadius: BorderRadius.circular(15),
                      color: CustomColor.green5EA570.withOpacity(0.6),
                      child: const Center(child: MyAutoSizeText('See All')),
                    )
                  ],
                ),
                Card(
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    height: 80,
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    height: 80,
                    // color: Colors.red,
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    height: 300,
                    // color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add New Transaction',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      persistentFooterButtons: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          child: const Center(
            child: Text('Advertisement'),
          ),
        )
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double? y;
}
