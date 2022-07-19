import 'package:election_app/features/home/domain/usecases/get_homepage_data_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/domain/usecases/get_home_page_party_data_usecase.dart';

import 'features/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'features/home/presentation/bloc/home_party_bloc/home_page_bloc.dart';
import 'features/home/presentation/pages/winner_parties_list_page.dart';
import 'injection.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomePageBloc(getIt<GetHomePagePartyDataUseCase>())
                ..add(HomePageEvent.loadHomePageData()),
        ),
        BlocProvider(
          create: (searchcontext) => HomeBloc(getIt<GetHomePageDataUseCase>())
            ..add(HomeEvent.loadHomePageData()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PartyWiseDetail(),
        // home: SearchDetailPage(),
      ),
    );
  }
}
