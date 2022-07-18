import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/domain/usecases/get_home_page_party_data_usecase.dart';

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
    return BlocProvider(
      create: (context) => HomeBloc(getIt<GetHomePagePartyDataUseCase>())
        ..add(HomeEvent.loadHomePageData()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PartyWiseDetail(),
      ),
    );
  }
}
