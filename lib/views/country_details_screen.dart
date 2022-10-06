import 'package:covid_19_api/widgets/reusable_row_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryDetailsScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      test,
      todayRecovered;
  CountryDetailsScreen(
      {Key? key,
      required this.name,
      required this.image,
      required this.totalCases,
      required this.totalDeaths,
      required this.todayRecovered,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.test})
      : super(key: key);

  @override
  State<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .067),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .06,
                        ),
                        ReusableRow(
                          title: 'Cases',
                          value: widget.totalCases.toString(),
                        ),
                        ReusableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString(),
                        ),
                        ReusableRow(
                          title: 'Total Recovered',
                          value: widget.todayRecovered.toString(),
                        ),
                        ReusableRow(
                          title: 'Deaths',
                          value: widget.totalDeaths.toString(),
                        ),
                        ReusableRow(
                          title: 'Critical',
                          value: widget.critical.toString(),
                        ),
                        ReusableRow(
                          title: 'Active',
                          value: widget.active.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
