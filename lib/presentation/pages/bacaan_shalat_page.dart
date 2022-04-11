import 'package:flutter/material.dart';
import 'package:gebetlesen/presentation/widget/list_bacaan_shalat.dart';

class BacaanShalatPage extends StatelessWidget {
  const BacaanShalatPage({Key? key}) : super(key: key);

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
                      'assets/images/bg_doa.png',
                    ),
                    fit: BoxFit.fill,
                  ),
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
                        'Bacaan Sholat',
                        style: TextStyle(
                          color: Colors.black,
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
                        'Bacaan sholat dari doa Iftitah sampai Salam',
                        style: TextStyle(
                          color: Colors.black,
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
              child: ListBacaanShalat(),
            ),
          ],
        ),
      ),
    );
  }
}
