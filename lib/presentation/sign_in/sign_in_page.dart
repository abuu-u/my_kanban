import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_kanban/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_kanban/injection.dart';

import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (create) => getIt<SignInFormBloc>(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Kanban'),
          ),
          body: SignInForm()),
    );
  }
}
