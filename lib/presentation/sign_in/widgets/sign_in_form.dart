import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_kanban/application/auth/auth_bloc.dart';
import 'package:my_kanban/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_kanban/generated/l10n.dart';
import 'package:my_kanban/presentation/routes/app_router.gr.dart';

import 'error_snackbar.dart';

class SignInForm extends StatelessWidget {
  void _showErrorSnackbar(BuildContext context, String message) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 5),
      builder: (context, controller) {
        return ErrorSnackbar(
          controller: controller,
          message: message,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) => f.map(
              serverError: (_) => _showErrorSnackbar(
                context,
                S.of(context).serverError,
              ),
            ),
            (_) {
              ExtendedNavigator.of(context).replace(Routes.homePage);
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        final SignInFormBloc signInFormBloc = context.read<SignInFormBloc>();

        return Form(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: S.of(context).usernameHint,
                ),
                onChanged: (value) => signInFormBloc.add(
                  SignInFormEvent.loginChanged(value),
                ),
                validator: (_) => signInFormBloc.state.login.value.fold(
                  (f) => f.maybeMap(
                    tooShort: (f) => S.of(context).getMinChars(f.minLength),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: S.of(context).passwordHint,
                ),
                onChanged: (value) => signInFormBloc.add(
                  SignInFormEvent.passwordChanged(value),
                ),
                validator: (_) => signInFormBloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    tooShort: (f) => S.of(context).getMinChars(f.minLength),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () =>
                    signInFormBloc.add(const SignInFormEvent.signInPressed()),
                child: Text(S.of(context).login),
              ),
            ],
          ),
        );
      },
    );
  }
}
