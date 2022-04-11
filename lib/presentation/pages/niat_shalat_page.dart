import 'package:flutter/material.dart';
import 'package:gebetlesen/presentation/widget/list_niat_shalat.dart';

class NiatShalatPage extends StatelessWidget {
  const NiatShalatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/bg_shalat.png',
                      ),
                      fit: BoxFit.fill),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        left: 8,
                      ),
                      child: Text(
                        'Niat Sholat Wajib',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        bottom: 20,
                      ),
                      child: Text(
                        'Bacaan niat sholat wajib 5 waktu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: ListNiatShalatPage(),
            ),
          ],
        ),
      ),
    );
  }
}
