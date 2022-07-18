import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_party_bloc/home_page_bloc.dart';

class PartyWiseDetail extends StatelessWidget {
  const PartyWiseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
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
                    Text("Failed to fetch data"),
                    MaterialButton(
                        child: Icon(Icons.restart_alt),
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context)
                              .add(HomeEvent.loadHomePageData());
                        })
                  ],
                ),
              );
            }, loadSuccess: (s) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
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
    return Card(
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
            child: Text(
                s.homeWinnerPartyPagedata.data[index].winnerCount.toString()),
          ),
        ),

        Expanded(
          flex: 1,
          child: Center(
            child: Text(s.homeWinnerPartyPagedata.data[index].lead.toString()),
          ),
        ),
      ],
    ));
  }
}
