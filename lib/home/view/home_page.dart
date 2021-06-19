import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project_management/authentication/bloc/authentication_bloc.dart';
//added stateless widget for the home page, this can be change according to the requirement.
class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }
//added scaffold with appbar with some raw UI 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final userId = context.select(
                  (AuthenticationBloc bloc) => bloc.state.user.id,
                );
                return Text('UserID: $userId');
              },
            ),
            //this button will navigate to login screen and also send the event for authentication logout request,
            //which will set the unauthenticated status
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
