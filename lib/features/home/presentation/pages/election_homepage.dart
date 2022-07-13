import 'package:election_app/features/home/data/data_source/remote_pradesh_data_impl.dart';
import 'package:election_app/features/home/presentation/pages/componets_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_source/remote_pradesh_data.dart';
import '../bloc/home_bloc.dart';

class ElectionHomePage extends StatefulWidget {
  ElectionHomePage({Key? key}) : super(key: key);

  @override
  State<ElectionHomePage> createState() => _ElectionHomePageState();
}

class _ElectionHomePageState extends State<ElectionHomePage> {
  // String dropdownvalue = "प्रदेश";
  // var items = [
  //   'प्रदेश 1',
  //   'प्रदेश',
  //   'प्रदेश 2',
  //   'प्रदेश 3',
  //   'प्रदेश 4',
  //   'प्रदेश 5',
  //   'प्रदेश 6',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        // foregroundColor: Colors.white,
        // backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset('assets/icons/logo.png'),
            ),
            const Spacer(),
            const Text(
              "स्थानीय तहको निर्वाचन २०७९",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.map(
              initial: (s) {},
              loading: (s) {},
              loadSuccess: (s) {},
              loadFailure: (s) {});
        },
        builder: (builderContet, state) {
          return state.map(
            initial: (s) => const CircularProgressIndicator(),
            loading: (s) => const CircularProgressIndicator(),
            loadSuccess: (s) {
              return ListView(
                children: const [
                  Text("test"),
                  // if (s.homepagedata.pradesh != null)
                  //   Text(s.homepagedata.pradesh?.data[1].pradeshName
                  //           .toString() ??
                  //       ""),
                  // textFieldWithBoX(s.homepagedata.pradesh.type.toString()),
                ],
              );
            },
            loadFailure: (s) => const Center(
              child: Text("No connection"),
            ),
          );
        },
      ),
    );
  }
}



      // body: ListView(
      //   children: [
      //     textFieldWithBoX("प्रदेश"),
      //     textFieldWithBoX("जिल्ला"),
      //     textFieldWithBoX("नगरपालिका वा गाउँपालिका"),
      //     textFieldWithBoX("खोज्नुहोस्"),
      //     // TextButton(
      //     //     onPressed: () async {
      //     //       final datasource = getIt<RemotePradeshNameDataSource>();
      //     //       final data = await datasource.getHomeResponse();
      //     //       print(data);

      //     //       print(data.items[0]["data"].length);
      //     //       print(data.items[1]["data"].length);
      //     //       print(data.items[2]["data"].length);
      //     //     },
      //     //     child: const Text("Call Api"))
      //   ],
    //   ),
    // );
//   }
// }
