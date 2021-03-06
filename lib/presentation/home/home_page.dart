import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_kanban/application/cards/cards_bloc.dart';
import 'package:my_kanban/injection.dart';

import 'widgets/home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CardsBloc>()..add(const CardsEvent.loadingStarted()),
      child: Home(),
    );
  }
}
