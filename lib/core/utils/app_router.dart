import 'package:flutter_application_1/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/profile_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignIn = '/';
  static const kHomeView = '/homeView';
  static const kProfileView = '/profileView';

  static final router = GoRouter(
    routes: [
      
      GoRoute(
        path: kSignIn,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      
    ],
  );
}
