import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_kanban/application/auth/auth_bloc.dart';
import 'package:my_kanban/application/cards/cards_bloc.dart';
import 'package:my_kanban/generated/l10n.dart';
import 'package:my_kanban/presentation/routes/app_router.gr.dart';

const tabs = [
  "onHold",
  "inProgress",
  "needsReview",
  "approved",
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardsBloc, CardsState>(
      builder: (context, state) {
        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              actions: [
                Center(
                  child: Ink(
                    decoration: ShapeDecoration(
                      color: Colors.grey[200],
                      shape: const CircleBorder(),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        ExtendedNavigator.of(context)
                            .replace(Routes.signInPage);
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                    ),
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: tabs
                    .map(
                      (tab) => Tab(
                        child: Text(S.of(context).getTab(tab)),
                      ),
                    )
                    .toList(),
              ),
            ),
            body: TabBarView(
              children: [
                for (int index = 0; index < tabs.length; index++)
                  state.when(
                    initial: () => Column(),
                    loadInProgress: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (cardsOption) => cardsOption.fold(
                      () => Text(S.of(context).cardsEmpty),
                      (cards) => ListView(
                        padding: const EdgeInsets.all(5),
                        children: cards
                            .where((card) => int.parse(card.row) == index)
                            .map((card) => Card(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: ListTile(
                                    title: Text(
                                      card.id.toString(),
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                    subtitle: Text(card.text),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    loadFailure: (_) => const Text('!!!'),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
