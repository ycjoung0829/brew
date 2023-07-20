import 'package:brew/services/firebase_services.dart';
import 'package:brew/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await FirebaseServices().signOut();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInPage()));
          },
          child: const Text("LOG OUT!"),
        ),
      ),
    );
  }
}
