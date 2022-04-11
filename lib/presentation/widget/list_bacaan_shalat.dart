import 'package:flutter/material.dart';
import 'package:gebetlesen/aplication/bacaan_shalat_provider.dart';
import 'package:provider/provider.dart';

class ListBacaanShalat extends StatefulWidget {
  const ListBacaanShalat({ Key? key }) : super(key: key);

  @override
  State<ListBacaanShalat> createState() => _ListBacaanShalatState();
}

class _ListBacaanShalatState extends State<ListBacaanShalat> {
  BacaanShalatProvider? bacaanShalatProvider;
  @override
  Widget build(BuildContext context) {
    bacaanShalatProvider = Provider.of<BacaanShalatProvider>(context);
    return Consumer<BacaanShalatProvider>(
      builder: (context, value, child) => FutureBuilder(
        future:
            Provider.of<BacaanShalatProvider>(context, listen: false).getNiats(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return bacaanShalatProvider!.bacaan.isEmpty
                ? Card(
                    child: Center(
                      child: Text(
                        'Tidak Ada Data Niat Shalat'.toUpperCase(),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: bacaanShalatProvider!.bacaan.length,
                    itemBuilder: (context, index) {
                      var bacaan = bacaanShalatProvider!.bacaan[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(15),
                        child: ExpansionTile(
                          title: Text(
                            bacaan.name!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                              right: 8,
                                            ),
                                            child: Text(
                                              bacaan.arabic!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                              right: 8,
                                            ),
                                            child: Text(
                                              bacaan.latin!,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                              right: 8,
                                              top: 5,
                                            ),
                                            child: Text(
                                              bacaan.terjemahan!,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
          } else {
            return const Text('Gagal');
          }
        },
      ),
    );
  }
}