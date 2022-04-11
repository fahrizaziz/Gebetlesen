import 'package:flutter/material.dart';
import 'package:gebetlesen/aplication/niat_shalat_provider.dart';
import 'package:provider/provider.dart';

class ListNiatShalatPage extends StatefulWidget {
  const ListNiatShalatPage({Key? key}) : super(key: key);

  @override
  State<ListNiatShalatPage> createState() => _ListNiatShalatPageState();
}

class _ListNiatShalatPageState extends State<ListNiatShalatPage> {
  NiatShalatProvider? niatShalat;
  @override
  Widget build(BuildContext context) {
    niatShalat = Provider.of<NiatShalatProvider>(context);
    return Consumer<NiatShalatProvider>(
      builder: (context, value, child) => FutureBuilder(
        future:
            Provider.of<NiatShalatProvider>(context, listen: false).getNiats(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return niatShalat!.niat.isEmpty
                ? Card(
                    child: Center(
                      child: Text(
                        'Tidak Ada Data Niat Shalat'.toUpperCase(),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: niatShalat!.niat.length,
                    itemBuilder: (context, index) {
                      var niat = niatShalat!.niat[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(15),
                        child: ExpansionTile(
                          title: Text(
                            niat.name!,
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
                                              niat.arabic!,
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
                                              niat.latin!,
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
                                              niat.terjemahan!,
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
