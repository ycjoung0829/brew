import 'package:brew/services/firebase_services.dart';
import 'package:brew/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Material(
        color: Colors.white,
        //type: MaterialType.transparency,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: height * 0.07),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.05,
                  width: width * 0.7,
                  child: const Text(
                    "TIME TO FIND",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: height * 0.08,
                  width: width * 0.7,
                  child: const Text(
                    "A DATE",
                    style: TextStyle(
                      color: Color(0xFF6C584C),
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '@seoul, south korea',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Public Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseServices().signOut();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  child: const Text("Log Out"),
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.04,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.25, color: Color(0xFFADC178)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Search tags (#wine #dine #game)',
                          style: TextStyle(
                            color: Color(0xFFA98467),
                            fontSize: 12,
                            fontFamily: 'Public Sans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
