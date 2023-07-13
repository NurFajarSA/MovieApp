import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient client;

  AuthService({required this.client});

  // Sign in with username and password
  Future<void> signIn({required String email, required String password}) async {
    await client.auth.signInWithPassword(email: email, password: password);
  }

  // Listen to auth state changes
  StreamSubscription<AuthState> onAuthStateChange() {
    return client.auth.onAuthStateChange.listen((data) {
      final Session? session = data.session;
      final AuthChangeEvent event = data.event;

      switch (event) {
        case AuthChangeEvent.signedIn:
          if (session != null) {
            // handle signed in state
          } else {
            // handle not successfully signed in state
          }
        case AuthChangeEvent.signedOut:
          // handle signed out state

          break;
        default:
      }
    });
  }

  bool isLoggedIn() {
    return client.auth.currentSession != null;
  }

  // Sign out
  Future<void> signOut() async {
    await client.auth.signOut();
  }
}
