import 'package:brew/services/firebase_services.dart';
import 'package:brew/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: height * 0.04),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'profile page',
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
                    padding: EdgeInsets.all(8.0),
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
