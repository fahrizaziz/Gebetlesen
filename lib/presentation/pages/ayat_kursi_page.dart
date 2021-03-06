import 'package:flutter/material.dart';

class AyatKursiPage extends StatelessWidget {
  const AyatKursiPage({Key? key}) : super(key: key);

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
                      'assets/images/bg_quran.jpg',
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
                        'Bacaan sholat dari doa Iftitah sampai Salam',
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    const Center(
                      child: Text(
                        "???????????? ???????????????? ?????????????????????????? ????????????????????",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Center(
                      child: const Text(
                        "Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SelectableText(
                      "???????????????? ???????? ???????????? ???????????? ?????????? ?????????????????? ???????????????????????? ???? ?????? ???????????????????? ???????????? ???????????? ??????????????  ???????? ?????? ?????? ?????????????????????? ?????????? ?????? ???????????????????? ???????? ?????? ???????????????? ???????????????? ?????????????????? ???????????? ?????????????????????? ???????????????? ?????? ???????????? ???????????????????????? ?????????? ?????????????????????? ?????????? ???????????????????????? ???????????????? ?????????? ?????????????????? ???????????? ?????????? ?????????????? ???????????? ?????????????????????? ?????????????????????? ???????????????????????? ?????????? ?????????????????????? ???????????????????????? ???????????? ???????????????????? ??????????????????????",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: const SelectableText(
                        "Allaahu laa ilaaha illaa huwal hayyul qoyyuum, laa ta???khudzuhuu sinatuw walaa naum. Lahuu maa fissamaawaati wa maa fil ardli man dzal ladzii yasyfa???u ???indahuu illaa biidznih, ya???lamu maa baina aidiihim wamaa kholfahum wa laa yuhiithuuna bisyai???im min ???ilmihii illaa bimaa syaa??? wasi???a kursiyyuhus samaawaati wal ardlo walaa ya???uuduhuu hifdhuhumaa wahuwal ???aliyyul ???adhiim.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: const SelectableText(
                        "Terjemahan : Allah, tidak ada tuhan selain Dia. Yang Mahahidup, Yang terus menerus mengurus (makhluk-Nya), tidak mengantuk dan tidak tidur. Milik-Nya apa yang ada di langit dan apa yang ada di bumi. Tidak ada yang dapat memberi syafaat di sisi-Nya tanpa izin-Nya. Dia mengetahui apa yang di hadapan mereka dan apa yang di belakang mereka, dan mereka tidak mengetahui sesuatu apa pun tentang ilmu-Nya melainkan apa yang Dia kehendaki. Kursi-Nya meliputi langit dan bumi. Dan Dia tidak merasa berat memelihara keduanya, dan Dia Mahatinggi, Mahabesar.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0e1446),
        child: const Icon(
          Icons.translate,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return const AlertDialog(
                  title: Center(
                    child: Text("Tafsir Ayat Kursi"),
                  ),
                  content: SingleChildScrollView(
                    child: Text(
                      "Allah adalah Tuhan Yang Maha Esa, tidak ada tuhan selain Dia, dan hanya Dia yang berhak untuk disembah. Adapun tuhan-tuhan yang lain yang disembah oleh sebagian manusia dengan alasan yang tidak benar, memang banyak jumlahnya. Akan tetapi Tuhan yang sebenarnya hanyalah Allah. Hanya Dialah Yang hidup abadi, yang ada dengan sendiri-Nya, dan Dia pulalah yang selalu mengatur makhluk-Nya tanpa ada kelalaian sedikit pun.\n\nKemudian ditegaskan lagi bahwa Allah tidak pernah mengantuk. Orang yang berada dalam keadaan mengantuk tentu hilang kesadarannya, sehingga dia tidak akan dapat melakukan pekerjaannya dengan baik, padahal Allah swt senantiasa mengurus dan memelihara makhluk-Nya dengan baik, tidak pernah kehilangan kesadaran atau pun lalai.\n\nKarena Allah tidak pernah mengantuk, sudah tentu Dia tidak pernah tidur, karena mengantuk adalah permulaan dari proses tidur. Orang yang tidur lebih banyak kehilangan kesadaran daripada orang yang mengantuk.\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah bahwa Dialah yang mempunyai kekuasaan dan yang memiliki apa yang ada di langit dan di bumi. Dialah yang mempunyai kekuatan dan kekuasaan yang tak terbatas, sehingga Dia dapat berbuat apa yang dikehendaki-Nya. Semuanya ada dalam kekuasaan-Nya, sehingga tidak ada satu pun dari makhluk-Nya termasuk para nabi dan para malaikat yang dapat memberikan pertolongan kecuali dengan izin-Nya, apalagi patung-patung yang oleh orang-orang kafir dianggap sebagai penolong mereka.\n\nYang dimaksud dengan \"pertolongan\" atau \"syafaat\" dalam ayat ini ialah pertolongan yang diberikan oleh para malaikat, nabi dan orang-orang saleh kepada umat manusia pada hari kiamat untuk mendapatkan keringanan atau kebebasan dari hukuman Allah. Syafaat itu akan terjadi atas izin Allah. Dalam hadis disebutkan :\n\nNabi Saw bersabda, \"??Kemudian Allah berfirman, \"Para Malaikat memberikan syafaat, para Nabi memberikan syafaat, dan orang-orang mukmin juga memberikan syafaat. (Riwayat Ahmad dan Muslim dari Abu Sa'id al-Khudri)\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah: bahwa Allah senantiasa mengetahui apa saja yang terjadi di hadapan dan di belakang makhluk-Nya, sedang mereka tidak mengetahui sesuatu pun dari ilmu Allah, melainkan sekadar apa yang dikehendaki-Nya untuk mereka ketahui. Kursi Allah mencakup langit dan bumi. Allah tidak merasa berat sedikit pun dalam memelihara makhluk-Nya yang berada di langit dan di bumi, dan di semua alam ciptaan-Nya. Allah Mahatinggi lagi Mahabesar.\n\nMereka tidak mengetahui ilmu Allah, kecuali apa yang telah dikehendaki-Nya untuk mereka ketahui. Dengan demikian, yang dapat diketahui oleh manusia hanyalah sekadar apa yang dapat dijangkau oleh pengetahuan yang telah dikaruniakan Allah kepada mereka, dan jumlahnya amat sedikit dibanding dengan ilmu-Nya yang luas. Hal ini ditegaskan Allah dalam firman-Nya:\n\n\"Sedangkan kamu diberi pengetahuan hanya sedikit.\" (al-Isra' 17:85)",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
