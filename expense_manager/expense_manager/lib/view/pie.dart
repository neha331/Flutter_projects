import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<StatefulWidget> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "Food": 25,
    "Fuel": 25,
    "Medicine": 20,
    "Entertaintment": 15,
    "Shopping": 15,
  };
  List<Color> colorList = [
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
    const Color.fromRGBO(241, 38, 196, 0.7),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          PieChart(
            dataMap: data,
            colorList: colorList,
            //animationDuration: const Duration(microseconds: 2000),
            chartType: ChartType.ring,
            chartRadius: 150,
            ringStrokeWidth: 25,
            centerText: "Total",
            chartValuesOptions: const ChartValuesOptions(
              showChartValuesInPercentage: false,
              showChartValueBackground: false,
              showChartValues: false,
            ),
            legendOptions: const LegendOptions(
                legendPosition: LegendPosition.right,
                legendShape: BoxShape.circle,
                showLegends: true),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 41,
                          width: 41,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(0, 174, 91, 0.7),
                              shape: BoxShape.circle),
                          child: Icon(Icons.shopping_cart),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Shopping',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        const Spacer(),
                        const Text('₹500'),
                        const SizedBox(width: 10, height: 70),
                      ],
                    );
                  })),
            ),
          ),
          const Divider(),
          Text(
            'Total: ₹ 2550',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          SizedBox(height:50),
        ],
      ),
    ));
  }
}
