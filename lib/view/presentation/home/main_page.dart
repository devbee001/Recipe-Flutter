import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/view/dashboard_screen.dart';
import 'package:recipe_app/view/presentation/authentication/sign_in_screen.dart';

import '../../../data/helper/storage_helper.dart';
import '../../../data/provider/auth_provider/google_auth_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: StorageHelper.getBool('truGoogleAuth') == true
          ? FutureBuilder<UserCredential?>(
              future: ref.read(googleAuthViewModel).signInWithGoogle(ref),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Something Went Wrong"));
                } else if (snapshot.hasData) {
                  return const DashboardScreen();
                } else {
                  return const SignInScreen();
                }
              })
          : StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Something Went Wrong"));
                } else if (snapshot.hasData) {
                  return const DashboardScreen();
                } else {
                  return const SignInScreen();
                }
              }),
    );
  }
}
