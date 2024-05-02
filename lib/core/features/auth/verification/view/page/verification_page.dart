import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/features/auth/verification/controller/cubit/verification_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          return VerificationCubit();
        },
      ),
      child: const Placeholder(),
    );
  }
}
