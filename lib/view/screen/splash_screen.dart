import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).pushNamed("login_page");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                "https://s3-alpha-sig.figma.com/img/e0f4/0f7e/4d7629aa79282a691a0955989bc2cb31?Expires=1701648000&Signature=WWFKzoQ6jtm0YvThxwWov6g1XpFecJq4AGTpoFYWxa9nwA2WYsxV7kCUlnYoePfS3bl8oXt2Gcf6YrIx7wR5DHFqJtrOFCpcBTbxZBc4ThQIqyYDsnExH-9~gwlkBPI-j4cxT274EmRqorKaMl1Pt0RT0VazIbSBz9~n3RC~y7TeELD250BT0ub0MMgj8Jzwn0U7vVxzTrcu~hEHyDOlwu6HcTz4mLkqKhpKg2SKSNX7Wcx2MbCkt3zkmdylhyp3RmedSiiTV3EJHcWnP6PYtaCZkuqnkVO96~RFqw9bTrrQnQglVM3oPSUXZFcZz5Y55WpegNjDxCBx4YTxCDtULg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
