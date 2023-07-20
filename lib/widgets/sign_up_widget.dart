import 'package:brew/page/home_page.dart';
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
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 844,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  const Positioned(
                    left: 82,
                    top: 175,
                    child: SizedBox(
                      width: 219,
                      height: 83,
                      child: Text(
                        'BREW',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 75,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 333,
                    child: SizedBox(
                      width: 272,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 272,
                              height: 44,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF6C584C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 22,
                            top: 11,
                            child: SizedBox(
                              width: 223,
                              height: 27,
                              child: Text(
                                'Create Account',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Public Sans',
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 82,
                    top: 546,
                    child: SizedBox(
                      width: 223,
                      height: 27,
                      child: Text(
                        'Phone Number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 82,
                    top: 511,
                    child: SizedBox(
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
                  ),
                  Positioned(
                    left: 133,
                    top: 546,
                    child: TextButton(
                      onPressed: () async {
                        await FirebaseServices().signInWithGoogle();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
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
                  ),
                  Positioned(
                    left: 200,
                    top: 549,
                    child: TextButton(
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
                  ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
