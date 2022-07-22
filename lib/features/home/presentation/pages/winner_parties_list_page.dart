import 'package:election_app/features/home/presentation/pages/search_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:election_app/features/home/presentation/widgets/search_view_widget.dart';

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
            Row(
              children: [
                const Text(
                  "खोज्नुहोस्",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchDetailPage()),
                      );
                    },
                    icon: const Icon(Icons.search)),
              ],
            ),
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
              List<Color> partyColors = const [];

              for (int i = 0; i < 15; i++) {
                // partyColors.add();
              }
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SfCircularChart(
                      backgroundColor: Colors.white,
                      // palette: [],
                      title: ChartTitle(text: "स्थानीय तह निर्वाचन २०७९"),
                      legend: Legend(
                          orientation: LegendItemOrientation.horizontal,
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap,
                          position: LegendPosition.bottom),
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                          legendIconType: LegendIconType.rectangle,
                          innerRadius: '30%',
                          dataSource: s.homeWinnerPartyPagedata.data
                              .map((candidate) => ChartData(candidate.partyName,
                                  candidate.winnerCount.toDouble()))
                              .toList(),
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          // radius: '50%',
                          // dataLabelSettings:
                          //     const DataLabelSettings(isVisible: true)
                        )
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
                        physics: NeverScrollableScrollPhysics(),
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
                  child: Text(getNeapliCharacter(
                      s.homeWinnerPartyPagedata.data[index].winnerCount))),
            ),

            Expanded(
              flex: 1,
              child: Center(
                child: Text(getNeapliCharacter(
                    s.homeWinnerPartyPagedata.data[index].lead)),
              ),
            ),
          ],
        ));
  }
}
