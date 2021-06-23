import 'dart:async';
//authentication status for authorisation
enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  //stream for maintaining authenticated status
  final _controller = StreamController<AuthenticationStatus>();
//getting the status of the stream
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }
//login method passed with two parameters username and password, we can add api here
  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }
//logout method to navigate to login screen and assign status as unauthenticated
  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
