import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmaiLView extends StatefulWidget {
  const VerifyEmaiLView({super.key});

  @override
  State<VerifyEmaiLView> createState() => _VerifyEmaiLViewState();
}

class _VerifyEmaiLViewState extends State<VerifyEmaiLView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text('Please verify your email address:'),
          TextButton(
              onPressed: () async {
                final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification();
              },
              child: const Text("Send Email Verification"))
        ],
      ),
    );
  }
}
