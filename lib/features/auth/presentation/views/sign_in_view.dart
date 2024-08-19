import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: SignInViewBody(),
      ),
    );
  }
}