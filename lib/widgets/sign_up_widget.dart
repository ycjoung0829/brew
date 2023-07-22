import 'package:brew/page/all_pages.dart';
import 'package:brew/page/main_page.dart';
import 'package:brew/services/firebase_services.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    print("$width $height");
    return SafeArea(
      child: Material(
        color: Colors.white,
        //type: MaterialType.transparency,
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BREW',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 75,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.8,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF6C584C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Align(
                    child: Text(
                      'Create Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Public Sans',
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.08),
            Positioned(
              left: 42,
              top: 452,
              child: Container(
                width: 302,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFA98467),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.08),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 223,
                  height: 27,
                  child: Text(
                    'Sign in with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA98467),
                      fontSize: 20,
                      fontFamily: 'Public Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    await FirebaseServices().signInWithGoogle();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllPages()));
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gmail.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/phone.png"),
                        fit: BoxFit.fill,
                      ),
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
