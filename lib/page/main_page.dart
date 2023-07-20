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
                  Positioned(
                      left: 16,
                      top: 70,
                      child: ElevatedButton(
                        onPressed: () async {
                          print("Hello");
                          await FirebaseServices().signOut();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()));
                        },
                        child: const Text("Log Out"),
                      )),
                  Positioned(
                    left: 16,
                    top: 757,
                    child: Container(
                      width: 61,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFADC178),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 761,
                    child: Container(
                      width: 61,
                      height: 77,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 80.85,
                            child: SizedBox(
                              width: 190.62,
                              height: 192.50,
                              child: Text(
                                'Created by Nira Inds',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 5,
                                  fontFamily: 'Helvetica Neue',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 90.47,
                            child: SizedBox(
                              width: 190.62,
                              height: 192.50,
                              child: Text(
                                'from the Noun Project',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 5,
                                  fontFamily: 'Helvetica Neue',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 757,
                    child: Container(
                      width: 61,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFADC178),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 91,
                    top: 760,
                    child: Container(
                      width: 66,
                      height: 82,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 164,
                    top: 757,
                    child: Container(
                      width: 62,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFADC178),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 760,
                    child: Container(
                      width: 53,
                      height: 66,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 239,
                    top: 757,
                    child: Container(
                      width: 61,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFADC178),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 244,
                    top: 772,
                    child: Container(
                      width: 56,
                      height: 49,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 56,
                              height: 39.33,
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 313,
                    top: 757,
                    child: Container(
                      width: 61,
                      height: 61,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFADC178),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 305,
                    top: 754,
                    child: Container(
                      width: 78,
                      height: 97,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 287,
                    top: 746,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFA98467),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 290,
                    top: 750,
                    child: SizedBox(
                      width: 19,
                      height: 13,
                      child: Text(
                        '3+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 60,
                    top: 177,
                    child: SizedBox(
                      width: 264,
                      height: 42,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 6,
                            top: 21,
                            child: SizedBox(
                              width: 258,
                              height: 21,
                              child: Text(
                                'did I get that wrong?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFA98467),
                                  fontSize: 8,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Public Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 258,
                              height: 21,
                              child: Text(
                                '📍: seoul, south korea',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Public Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 63,
                    top: 40,
                    child: SizedBox(
                      width: 257,
                      height: 111,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 92,
                            child: SizedBox(
                              width: 226,
                              height: 19,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'for ',
                                      style: TextStyle(
                                        color: Color(0xFFA98467),
                                        fontSize: 20,
                                        fontFamily: 'Public Sans',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'name',
                                      style: TextStyle(
                                        color: Color(0xFFA98467),
                                        fontSize: 20,
                                        fontFamily: 'Public Sans',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 201,
                            top: 54,
                            child: SizedBox(
                              width: 56,
                              height: 19,
                              child: Text(
                                'ing',
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
                            left: 0,
                            top: 0,
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 234,
                    child: Container(
                      width: 340,
                      height: 28,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.25, color: Color(0xFFADC178)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 29,
                    top: 241,
                    child: SizedBox(
                      width: 330,
                      height: 11,
                      child: Text(
                        'Search tags (#wine #dine #game)',
                        style: TextStyle(
                          color: Color(0xFFA98467),
                          fontSize: 10,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 38,
                    top: 400,
                    child: SizedBox(
                      width: 302,
                      height: 31,
                      child: Text(
                        'no one’s hosting dates here as of now :(',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA98467),
                          fontSize: 15,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 60,
                    top: 440,
                    child: SizedBox(
                      width: 268,
                      height: 31,
                      child: Text(
                        'want to check out somewhere else?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA98467),
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w300,
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
