import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff2e4ff),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Transform.scale(
                scale: 0.5,
                child: const Image(
                  image: AssetImage("assets/brew_text.png"),
                ),
              ),
              Transform.scale(
                scale: 1.2,
                child: Transform.translate(
                  offset: const Offset(10, -100),
                  child: const Image(
                    alignment: Alignment.center,
                    image: AssetImage("assets/brew.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
