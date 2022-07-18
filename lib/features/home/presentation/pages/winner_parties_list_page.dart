import 'package:election_app/features/home/presentation/pages/election_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../bloc/home_party_bloc/home_page_bloc.dart';

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
  // final Color color=Colors.blue;
}

class PartyWiseDetail extends StatelessWidget {
  const PartyWiseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: 150,
            height: 100,
            child: Image.asset('assets/icons/logo.png'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ElectionHomePage()),
                  );
                },
                icon: const Icon(Icons.search)),
          ],
        ),
        body: BlocConsumer<HomePageBloc, HomePageState>(
          listener: (context, state) {
            state.map(
                loading: (s) {}, loadFailure: (s) {}, loadSuccess: (s) {});
          },
          builder: (context, state) {
            return state.map(loading: (s) {
              return const Center(child: CircularProgressIndicator());
            }, loadFailure: (s) {
              return Center(
                child: Column(
                  children: [
                    const Text("Failed to fetch data"),
                    MaterialButton(
                        child: const Icon(Icons.restart_alt),
                        onPressed: () {
                          BlocProvider.of<HomePageBloc>(context)
                              .add(HomePageEvent.loadHomePageData());
                        })
                  ],
                ),
              );
            }, loadSuccess: (s) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SfCircularChart(
                      title: ChartTitle(text: "स्थानीय तहको निर्वाचन २०७९"),
                      legend: Legend(isVisible: true),
                      series: <CircularSeries>[
                        PieSeries<ChartData, String>(
                            dataSource: s.homeWinnerPartyPagedata.data
                                .map((candidate) => ChartData(
                                    candidate.partyName,
                                    candidate.winnerCount.toDouble()))
                                .toList(),
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true))
                      ],
                    ),
                    Row(children: const [
                      Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            "राजनीतिक दलहरू",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("विजेता",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("अग्रता",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: s.homeWinnerPartyPagedata.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildCard(s, index);
                        }),
                  ],
                ),
              );
            });
          },
        ),
      ),
    );
  }

  Card buildCard(s, int index) {
    Color cardColor;
    if (index % 2 == 0) {
      cardColor = Colors.green.shade100;
    } else {
      cardColor = Colors.cyan.shade100;
    }
    return Card(
        color: cardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Text(s.homeWinnerPartyPagedata.data[index].partyName),
            ),

            // Spacer(),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(s.homeWinnerPartyPagedata.data[index].winnerCount
                    .toString()),
              ),
            ),

            Expanded(
              flex: 1,
              child: Center(
                child:
                    Text(s.homeWinnerPartyPagedata.data[index].lead.toString()),
              ),
            ),
          ],
        ));
  }
}
