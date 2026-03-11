import 'package:dalel/core/routes/main_navigation.dart';
import 'package:dalel/features/auth/presentation/view/login_screen.dart';
import 'package:dalel/features/auth/presentation/view/signup_screen.dart';
import 'package:dalel/features/cart/presentation/cart_screen.dart';
import 'package:dalel/features/home/presentation/view/home_screen.dart';
import 'package:dalel/features/profile/presentation/profile_screen.dart';
import 'package:dalel/features/search/presentation/search_screen.dart';
import 'package:dalel/features/splash/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
     GoRoute(
      path: "/signup",
      builder: (context, state) => const SignupScreen(),
    ),

    ShellRoute(
      builder: (context, state, child) {
        return MainNavigation(child: child);
      },
      routes: [

        GoRoute(
          path: "/home",
          builder: (context, state) => const HomeScreen(),
        ),

        GoRoute(
          path: "/search",
          builder: (context, state) => const SearchScreen(),
        ),

        GoRoute(
          path: "/cart",
          builder: (context, state) => const CartScreen(),
        ),

        GoRoute(
          path: "/profile",
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);